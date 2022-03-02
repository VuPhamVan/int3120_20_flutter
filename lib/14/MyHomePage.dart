import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  static const String _url = 'https://github.com/VuPhamVan/int3120_20_flutter.git';
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
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
          onPressed: _launchURL,
        ),
      ),
    );
    throw UnimplementedError();
  }
}
