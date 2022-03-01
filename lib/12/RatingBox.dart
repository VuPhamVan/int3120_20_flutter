import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:int3120_20_flutter/12/Product.dart';

class RatingBox extends StatelessWidget {
  final Product item;

  const RatingBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    if (kDebugMode) {
      print(item.rating);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (Icon(item.rating >= 1 ? Icons.star : Icons.star_border,
                size: _size)),
            color: Colors.red,
            onPressed: () => item.updateRating(1),
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (Icon(item.rating >= 2 ? Icons.star : Icons.star_border,
                size: _size)),
            color: Colors.red,
            onPressed: () => item.updateRating(2),
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (Icon(item.rating >= 3 ? Icons.star : Icons.star_border,
                size: _size)),
            color: Colors.red,
            onPressed: () => item.updateRating(3),
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
