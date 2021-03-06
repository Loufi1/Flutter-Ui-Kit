import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UikitCardButton extends StatelessWidget {

  final String buttonName;
  final Color buttonNameColor;
  final Color backgroundColor;
  final Function onTap;
  final Icon icon;
  final double height;

  const UikitCardButton({
    this.buttonName = 'Login',
    this.buttonNameColor = Colors.white,
    this.backgroundColor = Colors.blueGrey,
    this.height,
    this.onTap,
    this.icon = const Icon(
      Icons.arrow_forward,
      color: Colors.white,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: this.height,
        decoration: BoxDecoration(
          color: this.backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Text(
                  this.buttonName,
                  style: TextStyle(
                    color: this.buttonNameColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Spacer(flex: 1),
                this.icon,
              ],
            )
        ),
      ),
    );
  }
}
