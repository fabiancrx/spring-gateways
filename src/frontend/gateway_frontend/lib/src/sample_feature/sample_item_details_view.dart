import 'package:flutter/material.dart';




/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  final int id;
  const SampleItemDetailsView({Key? key, required this.id}) : super(key: key);

  static const routeName = '/gateway';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: CustomScrollView(slivers: [
        SliverList(delegate: SliverChildListDelegate([



        ])),


      ]),
    );
  }
}
