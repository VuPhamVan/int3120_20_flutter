import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/12/Product.dart';
import 'package:int3120_20_flutter/12/RatingBox.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductPage extends StatelessWidget {
  final Product item;

  const ProductPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.name),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: ScopedModel<Product>(
            model: item,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/ram/' + this.item.image),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        this.item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(this.item.description),
                      Text('Price \$:' + this.item.price.toString()),
                      ScopedModelDescendant<Product>(
                          builder: (context, child, item) {
                        return RatingBox(item: item);
                      })
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
