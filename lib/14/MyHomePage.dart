import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  static const platform = const MethodChannel('int3120_20_flutter.14/browser');

  Future<void> _openBrowser() async {
    try {
      final int result = await platform.invokeMethod(
          'openBrowser', <String, String>{'url': "https://flutter.dev"});
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open Browser'),
          onPressed: _openBrowser,
        ),
      ),
    );
    throw UnimplementedError();
  }
}
