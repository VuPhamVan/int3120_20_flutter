import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'Product.dart';

class SQLiteDbProvider {
  SQLiteDbProvider._();

  static final SQLiteDbProvider db = SQLiteDbProvider._();
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "ProductDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute("CREATE TABLE Product ("
              "id INTEGER PRIMARY KEY,"
              "name TEXT,"
              "description TEXT,"
              "price INTEGER,"
              "image TEXT,"
              "rating INTEGER"
              ")");
          await db.execute(
              "INSERT INTO Product ('id', 'name', 'description', 'price', 'image', 'rating') values (?, ?, ?, ?, ?, ?)",
              [1, "4 GB", "DDR4-2400 10-12-10-27 1.65V", 24, "4.png", 0]);
          await db.execute(
              "INSERT INTO Product ('id', 'name', 'description', 'price', 'image', 'rating') values (?, ?, ?, ?, ?, ?)",
              [2, "8 GB", "DDR4-2400 10-12-10-27 1.65V", 45, "8.png", 0]);
          await db.execute(
              "INSERT INTO Product ('id', 'name', 'description', 'price', 'image', 'rating') values (?, ?, ?, ?, ?, ?)",
              [3, "16 GB", "DDR4-2400 10-12-10-27 1.65V", 79, "16.png", 0]);
          await db.execute(
              "INSERT INTO Product ('id', 'name', 'description', 'price', 'image', 'rating') values (?, ?, ?, ?, ?, ?)",
              [4, "32 GB", "DDR4-2400 10-12-10-27 1.65V", 149, "32.png", 0]);
        });
  }

  Future<List<Product>> getAllProducts() async {
    final db = await database;
    List<Map> results =
    await db!.query("Product", columns: Product.columns, orderBy: "id ASC");
    List<Product> products = [];
    results.forEach((result) {
      Product product = Product.fromMap(result);
      products.add(product);
    });
    return products;
  }

  Future<Object> getProductById(int id) async {
    final db = await database;
    var result = await db!.query("Product", where: "id = ", whereArgs: [id]);
    return result.isNotEmpty ? Product.fromMap(result.first) : Null;
  }

  insert(Product product) async {
    final db = await database;
    var maxIdResult =
    await db!.rawQuery("SELECT MAX(id)+1 as last_inserted_id FROM Product");
    var id = maxIdResult.first["last_inserted_id"];
    var result = await db.rawInsert(
        "INSERT Into Product (id, name, description, price, image, rating)"
            " VALUES (?, ?, ?, ?, ?, ?)",
        [
          id,
          product.name,
          product.description,
          product.price,
          product.image,
          product.rating
        ]);
    return result;
  }

  update(Product product) async {
    final db = await database;
    var result = await db!.update("Product", product.toMap(),
        where: "id = ?", whereArgs: [product.id]);
    return result;
  }

  delete(int id) async {
    final db = await database;
    db!.delete("Product", where: "id = ?", whereArgs: [id]);
  }
}
