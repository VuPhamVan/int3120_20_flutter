import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/18/MyHomePage.dart';
import 'package:int3120_20_flutter/18/Product.dart';

class MyApp extends StatelessWidget {
  final Future<List<Product>> products;
  const MyApp({Key? key, required this.products}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product state demo home page', items: products),
    );
  }
}
