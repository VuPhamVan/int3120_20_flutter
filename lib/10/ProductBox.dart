import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/10/RatingBox.dart';

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String img;

  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/ram/' + img),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    this.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.description),
                  Text('Price: \$' + this.price.toString()),
                  RatingBox(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
