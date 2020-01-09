import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UikitCardButton extends StatelessWidget {

  final String buttonName;
  final Color buttonNameColor;
  final Color backgroundColor;
  final Function onTap;

  const UikitCardButton({
    this.buttonName = 'Login',
    this.buttonNameColor = Colors.white,
    this.backgroundColor = Colors.blueGrey,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
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
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            )
        ),
      ),
    );
  }
}
