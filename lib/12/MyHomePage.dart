import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/12/Product.dart';
import 'package:int3120_20_flutter/12/ProductBox.dart';
import 'package:int3120_20_flutter/12/ProductPage.dart';

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
            return GestureDetector(
              child: ProductBox(item: items[index]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductPage(item: items[index])));
              },
            );
          },
        ));
  }
}
