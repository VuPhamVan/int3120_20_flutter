import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/10/ProductBox.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: [
          ProductBox(
            name: '4 GB',
            description: 'DDR4-2400 10-12-10-27 1.65V',
            price: 24,
            img: '4.png',
          ),
          ProductBox(
              name: '8 GB',
              description: 'DDR4-2400 10-12-10-27 1.65V',
              price: 45,
              img: '8.png'),
          ProductBox(
              name: '16 GB',
              description: 'DDR4-2400 10-12-10-27 1.65V',
              price: 79,
              img: '16.png'),
          ProductBox(
              name: '32 GB',
              description: 'DDR4-2400 10-12-10-27 1.65V',
              price: 149,
              img: '32.png')
        ],
      ),
    );
    throw UnimplementedError();
  }
}
