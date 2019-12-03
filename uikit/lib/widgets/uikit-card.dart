import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UikitCard extends StatelessWidget {

  final double width;
  final double height;
  final Color color;
  final Color shadowColor;
  final double blurRadius;
  final borderRadius;
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
        child: child,
      ),
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: blurRadius != 0 ? shadowColor: Colors.transparent,
          blurRadius: blurRadius,
        ),
      ]),
    );
  }
}
