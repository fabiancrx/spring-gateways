import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gateway_frontend/src/gateway/gateway_provider.dart';
import 'package:gateway_frontend/src/sample_feature/sample_item_list_view.dart';
import 'package:openapi/openapi.dart';

final gatewayDetailsProvider = FutureProvider.family<Gateway, int>((ref, id) async {
  final response = await ref.read(apiProvider).getGatewayControllerApi().read(id: id);

  final gateway = response.data;
  if (gateway == null) throw Exception("");
  return gateway;
});

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends ConsumerWidget {
  final int id;

  const SampleItemDetailsView({Key? key, required this.id}) : super(key: key);

  static const routeName = '/gateway';

  @override
  Widget build(BuildContext context, ref) {
    final gateway = ref.watch(gatewayDetailsProvider(id));

    return Scaffold(
      appBar: AppBar(title: const Text('Item Details')),
      body: gateway.map(
          data: (data) {
            final item = data.value;
            final peripherals = item.peripherals?.toList();
            final hasPeripherals = peripherals != null && peripherals.isNotEmpty;

            return CustomScrollView(slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                PeripheralProgressIndicator(current: peripherals?.length),
                ListTile(title: Text("Name"), subtitle: Text(item.name)),
                if (item.ipv4 != null) ListTile(title: Text("IPv4 Address"), subtitle: Text(item.ipv4 ?? "")),
                ListTile(title: Text("Serial Number"), subtitle: Text(item.serialNumber)),
                if (!hasPeripherals)
                  Column(
                    children: [
                      Icon(Icons.block),
                      SizedBox.square(dimension: 16),
                      Text("This gateway has no peripherals")
                    ],
                  ),
              ])),
              if (hasPeripherals)
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  final peripheral = peripherals.elementAt(index);
                  return PeripheralWidget(peripheral: peripheral);
                }, childCount: peripherals.length))
            ]);
          },
          error: (error) => ExceptionWidget(error),
          loading: (loading) => CircularProgressIndicator.adaptive()),
    );
  }
}

extension PeripheralStatusEnumX on PeripheralStatusEnum {
  IconData get icon {
    if (this == PeripheralStatusEnum.ONLINE) return Icons.signal_cellular_4_bar_sharp;
    return Icons.signal_cellular_connected_no_internet_0_bar;
  }
}

class PeripheralProgressIndicator extends StatelessWidget {
  final int max;
  final int? current;

  const PeripheralProgressIndicator({Key? key, this.max = 10, this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (current == null) return const SizedBox.shrink();

    return Tooltip(
      message: "$current out of 10 peripherals",
      child: LinearProgressIndicator(value: current! / max),
    );
  }
}

class PeripheralWidget extends StatelessWidget {
  final Peripheral peripheral;

  const PeripheralWidget({Key? key, required this.peripheral}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final createdDate = peripheral.created;

    return Card(
      child: ListTile(
        leading: Icon(peripheral.status?.icon),
        title: Text(peripheral.vendor),
        subtitle: Text(createdDate != null ? MaterialLocalizations.of(context).formatCompactDate(createdDate) : ""),
      ),
    );
  }
}
