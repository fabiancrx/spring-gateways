import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gateway_frontend/src/gateway/gateway_provider.dart';
import 'package:gateway_frontend/src/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';

final gatewayProvider = FutureProvider<List<Gateway>>((ref) async {
  final page = Pageable();
  final response = await ref.read(apiProvider).getGatewayControllerApi().browse(pageable: page);

  final gateways = response.data?.content?.toList();
  if (gateways == null) throw Exception("");
  return gateways;
});

/// Displays a list of SampleItems.
class GatewayListView extends StatelessWidget {
  const GatewayListView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List of gateways'),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.goNamed(AppRoute.settings.name);
              },
            ),
          ],
        ),


        body: Consumer(builder: (context, ref, child) {
          return ref.watch(gatewayProvider).map(
              data: (data) {
                final items = data.value;
                return ListView.builder(
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

                            if (item.id != null) {
                              context.goNamed(
                                AppRoute.gateway.name,
                                params: {'id': "${item.id}"},
                              );
                            }
                          }),
                    );
                  },
                );
              },
              error: (error) => ExceptionWidget(error, onTap: () {
                    ref.refresh(gatewayProvider);
                  }),
              loading: (loading) => const CircularProgressIndicator.adaptive());
        }));
  }
}

class ExceptionWidget<T> extends StatelessWidget {
  final AsyncError<T> error;
  final VoidCallback? onTap;

  const ExceptionWidget(this.error, {Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          const Icon(Icons.cloud_off),
          const SizedBox.square(dimension: 16),
          Text("An error has occurred ${error.error}"),
          const SizedBox.square(dimension: 16),
          if (onTap != null) OutlinedButton(onPressed: onTap, child: const Text("Retry"))
        ],
      ),
    );
  }
}
