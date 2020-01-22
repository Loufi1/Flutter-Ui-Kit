import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-neumorphic-container.dart';
import 'package:uikit/services/colorConverter.dart';

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UikitNeumorphicContainer(
      radius: 3,
      padding: 0,
      color: HexColor("E0E5EC"),
      leftShadowColor: Colors.white,
      rightShadowColor: HexColor("#A3B1C6"),
      innerShadowColor: HexColor("E0E5EC"),
      rightInnerShadowColor: HexColor("E0E5EC"),
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        child: Container(
          child: RichText(
            text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Ui',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  TextSpan(
                    text: 'Kit',
                    style: TextStyle(
                      color: Colors.blueGrey[200],
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
