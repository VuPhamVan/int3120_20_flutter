import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;

  Product(this.name, this.description, this.price, this.image, this.rating);

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
      json['rating'],
    );
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(Product('4 GB', 'DDR4-2400 10-12-10-27 1.65V', 24, '4.png', 0));
    items.add(Product('8 GB', 'DDR4-2400 10-12-10-27 1.65V', 45, '8.png', 0));
    items.add(Product('16 GB', 'DDR4-2400 10-12-10-27 1.65V', 79, '16.png', 0));
    items
        .add(Product('32 GB', 'DDR4-2400 10-12-10-27 1.65V', 149, '32.png', 0));
    return items;
  }

  void updateRating(int rating) {
    this.rating = rating;
    notifyListeners();
  }
}
