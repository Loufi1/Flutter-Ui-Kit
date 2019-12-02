import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UikitCard extends StatelessWidget {

  // SIZE
  final double width;
  final double height;

  // BACKGROUND
  final Color color;

  // SHADOW
  final Color shadowColor;
  final double blurRadius;

  // SHAPE
  final borderRadius;

  // CONTENT
  final Widget child;

  UikitCard({
    this.width = 100,
    this.height = 100,
    this.color = Colors.white,
    this.shadowColor = Colors.blueGrey,
    this.blurRadius = 100.0,
    this.borderRadius = 0.0,
    this.child = null,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
            child: child,
        ),
      ),
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: shadowColor,
          blurRadius: blurRadius,
        ),
      ]),
    );
  }
}
