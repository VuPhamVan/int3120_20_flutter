import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/14/MyHomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(
        title: 'Home page',
      ),
    );
    throw UnimplementedError();
  }
}
