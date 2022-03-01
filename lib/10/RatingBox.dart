import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double _size = 20;
    print(rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: Icon(
                rating >= 1 ? Icons.star : Icons.star_border, size: _size),
            color: Colors.red,
            iconSize: _size,
            onPressed: () {
              setRating(1);
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: Icon(
                rating >= 2 ? Icons.star : Icons.star_border, size: _size),
            color: Colors.red,
            iconSize: _size,
            onPressed: () {
              setRating(2);
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: Icon(
                rating >= 3 ? Icons.star : Icons.star_border, size: _size),
            color: Colors.red,
            iconSize: _size,
            onPressed: () {
              setRating(3);
            },
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }

  void setRating(int x) {
    setState(() {
      rating = x;
    });
  }

}
