import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/18/Product.dart';
import 'package:int3120_20_flutter/18/ProductBoxList.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final Future<List<Product>> items;

  MyHomePage({Key? key, required this.title, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: Center(
          child: FutureBuilder<List<Product>>(
            future: items,
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? ProductBoxList(items: snapshot.requireData)
                  : Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}
