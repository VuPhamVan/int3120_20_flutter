import 'package:flutter/material.dart';

import 'package:int3120_20_flutter/18/Product.dart';
import 'package:int3120_20_flutter/18/ProductBox.dart';
import 'package:int3120_20_flutter/18/ProductPage.dart';

class ProductBoxList extends StatelessWidget {
  final List<Product> items;

  const ProductBoxList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ProductBox(item: items[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(item: items[index]),
              ),
            );
          },
        );
      },
    );
    throw UnimplementedError();
  }
}
