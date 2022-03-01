import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  const MyAnimatedWidget(
      {Key? key, required this.animation, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) => Container(
            child: Opacity(
              opacity: animation.value,
              child: child,
            ),
          ),
          child: child,
        ),
      );
}
