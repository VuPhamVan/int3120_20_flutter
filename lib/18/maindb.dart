import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/18/Database.dart';
import 'package:int3120_20_flutter/18/MyApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SQLiteDbProvider.db.database;
  runApp(MyApp(products: SQLiteDbProvider.db.getAllProducts()));
}
