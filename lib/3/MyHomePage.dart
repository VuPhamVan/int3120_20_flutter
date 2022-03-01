import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text(
          "19021397 - Phạm Văn Vũ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
