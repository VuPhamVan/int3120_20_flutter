import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/11/Product.dart';
import 'package:int3120_20_flutter/11/RatingBox.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductBox extends StatelessWidget {
  final Product item;

  const ProductBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 140,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/ram/" + item.image),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        child: ScopedModel<Product>(
                            model: item,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(item.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Text(item.description),
                                Text("Price: " + item.price.toString()),
                                ScopedModelDescendant<Product>(
                                    builder: (context, child, item) {
                                  return RatingBox(item: item);
                                })
                              ],
                            ))))
              ]),
        ));
  }
}
