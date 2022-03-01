import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/3/MyHomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Demo Application',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Home Page'),
    );
    throw UnimplementedError();
  }
}
