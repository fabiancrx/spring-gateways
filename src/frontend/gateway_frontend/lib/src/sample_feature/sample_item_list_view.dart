import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gateway_frontend/src/gateway/gateway_provider.dart';
import 'package:openapi/openapi.dart';

import '../settings/settings_view.dart';
import 'sample_item_details_view.dart';

final gatewayProvider = FutureProvider<List<Gateway>>((ref) async {
  final page = Pageable();
  final response = await ref.read(apiProvider).getGatewayControllerApi().browse(pageable: page);

  final gateways = response.data?.content?.toList();
  if (gateways == null) throw Exception("");
  return gateways;
});

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Items'),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Navigate to the settings page. If the user leaves and returns
                // to the app after it has been killed while running in the
                // background, the navigation stack is restored.
                Navigator.restorablePushNamed(context, SettingsView.routeName);
              },
            ),
          ],
        ),

        // To work with lists that may contain a large number of items, it’s best
        // to use the ListView.builder constructor.
        //
        // In contrast to the default ListView constructor, which requires
        // building all Widgets up front, the ListView.builder constructor lazily
        // builds Widgets as they’re scrolled into view.
        body: Consumer(builder: (context, ref, child) {
          return ref.watch(gatewayProvider).map(
              data: (data) {
                final items = data.value;
                return ListView.builder(
                  // Providing a restorationId allows the ListView to restore the
                  // scroll position when a user leaves and returns to the app after it
                  // has been killed while running in the background.
                  restorationId: 'sampleItemListView',
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = items[index];

                    return Tooltip(
                      message: "Id: ${item.serialNumber}",
                      child: ListTile(
                          title: Text(item.name),
                          leading: const CircleAvatar(
                            // Display the Flutter Logo image asset.
                            foregroundImage: AssetImage('assets/images/flutter_logo.png'),
                          ),
                          subtitle: Text(item.ipv4 ?? ""),
                          onTap: () {
                            // Navigate to the details page. If the user leaves and returns to
                            // the app after it has been killed while running in the
                            // background, the navigation stack is restored.
                            Navigator.restorablePushNamed(
                              context,
                              SampleItemDetailsView.routeName,
                            );
                          }),
                    );
                  },
                );
              },
              error: (error) => ExceptionWidget(error),
              loading: (loading) => const CircularProgressIndicator.adaptive());
        }));
  }
}

class ExceptionWidget<T> extends StatelessWidget {
  final AsyncError<T> error;

  const ExceptionWidget(this.error, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Placeholder(),
    );
  }
}
