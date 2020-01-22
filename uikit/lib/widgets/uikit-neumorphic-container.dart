import 'package:flutter/material.dart';

class UikitNeumorphicContainer extends StatefulWidget {
  final Widget child;
  final double bevel;
  final Offset blur;
  final Color color;
  final Color leftShadowColor;
  final Color rightShadowColor;
  final Color innerShadowColor;
  final double radius;
  final double padding;

  UikitNeumorphicContainer({
    this.child,
    this.bevel = 10.0,
    this.color = Colors.white,
    this.leftShadowColor = Colors.white,
    this.rightShadowColor = Colors.grey,
    this.innerShadowColor = Colors.grey,
    this.radius = 3,
    this.padding = 20,
  }) : this.blur = Offset(bevel / 2, bevel / 2);

  @override
  _UikitNeumorphicContainerState createState() => _UikitNeumorphicContainerState();
}

class _UikitNeumorphicContainerState extends State<UikitNeumorphicContainer> {
  bool isPressed = false;

  void onPressed(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
  }

  void onRelease(PointerUpEvent event) {
    setState(() {
      isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = this.widget.color;

    return Listener(
      onPointerDown: onPressed,
      onPointerUp: onRelease,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.all(this.widget.padding),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                isPressed ? color : color.mix(this.widget.innerShadowColor, 0.1),
                isPressed ? color.mix(this.widget.innerShadowColor, 0.05) : color,
                isPressed ? color.mix(this.widget.innerShadowColor, 0.05) : color,
                color.mix(Colors.white, isPressed ? 0.2 : 0.5),
              ],
              stops: [0.0, 0.3, 0.6, 1.0,]),
          boxShadow: isPressed ? null : [
            BoxShadow(
              blurRadius: this.widget.bevel,
              offset: -this.widget.blur,
              color: color.mix(this.widget.leftShadowColor, 0.6),
            ),
            BoxShadow(
              blurRadius: this.widget.bevel,
              offset: this.widget.blur,
              color: color.mix(this.widget.rightShadowColor, 0.3),
            )
          ],
          borderRadius: BorderRadius.circular(this.widget.bevel * this.widget.radius),
        ),
        child: this.widget.child,
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}
