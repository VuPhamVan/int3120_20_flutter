import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/11/Product.dart';
import 'package:int3120_20_flutter/11/ProductBox.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ProductBox(item: items[index]);
          },
        ));
  }
}