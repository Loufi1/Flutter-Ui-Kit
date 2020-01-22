import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-input.dart';
import 'package:uikit/widgets/uikit-card-button.dart';
import 'package:uikit/pages/mainPage/mainPage.dart';
import 'package:uikit/widgets/uikit-neumorphic-container.dart';
import 'package:uikit/services/colorConverter.dart';

class LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UikitNeumorphicContainer(
          radius: 1,
          padding: 0,
          color: HexColor("E0E5EC"),
          leftShadowColor: Colors.white,
          rightShadowColor: HexColor("#A3B1C6"),
          innerShadowColor: HexColor("E0E5EC"),
          rightInnerShadowColor: HexColor("E0E5EC"),
          child: UikitInput(
            fieldName: 'USERNAME',
            fieldNameColor: Colors.blueGrey[200],
            inputColor: Colors.blueGrey[500],
            backgroundColor: Colors.transparent,
            hintText: 'loufi1@uikit.com',
            hintColor: Colors.blueGrey[100],
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),

        UikitNeumorphicContainer(
          radius: 1,
          padding: 0,
          color:  HexColor("E0E5EC"),
          leftShadowColor: Colors.white,
          rightShadowColor: HexColor("#A3B1C6"),
          innerShadowColor:  HexColor("E0E5EC"),
          rightInnerShadowColor: HexColor("E0E5EC"),
          child: UikitInput(
            fieldName: 'PASSWORD',
            isSecret: true,
            fieldNameColor: Colors.blueGrey[200],
            inputColor: Colors.blueGrey[500],
            backgroundColor: Colors.transparent,
            hintText: 'xxxxxxxx',
            hintColor: Colors.blueGrey[100],
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),

        UikitNeumorphicContainer(
          radius: 1,
          padding: 0,
          color: HexColor("E0E5EC"),
          leftShadowColor: Colors.white,
          rightShadowColor: HexColor("#A3B1C6"),
          innerShadowColor: HexColor("E0E5EC"),
          rightInnerShadowColor: HexColor("E0E5EC"),
          child: UikitCardButton(
            buttonNameColor: Colors.blueGrey[200],
            backgroundColor: Colors.transparent,
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.blueGrey[200],
            ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              }
          ),
        ),
      ],
    );
  }
}
