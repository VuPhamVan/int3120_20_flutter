import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final int id;
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;
  static final columns = ["id", "name", "description", "price", "image", "rating"];
  Product(this.id, this.name, this.description, this.price, this.image, this.rating);
  factory Product.fromMap(Map<dynamic, dynamic> data) {
    return Product(
      data['id'],
      data['name'],
      data['description'],
      data['price'],
      data['image'],
      data['rating'],
    );
  }
  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "image": image,
    "rating": rating,
  };

  void updateRating(int rating) {
    this.rating = rating;
    notifyListeners();
  }
}