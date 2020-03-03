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
          color: HexColor("17223B"),
          leftShadowColor: HexColor("182C45"),
          rightShadowColor: Colors.black,
          innerShadowColor: Colors.black,
          rightInnerShadowColor: HexColor("1A3850"),
          child: UikitInput(
            fieldName: 'USERNAME',
            fieldNameColor: Colors.blueGrey[100],
            inputColor: Colors.blueGrey[100],
            backgroundColor: Colors.transparent,
            hintText: 'loufi1@uikit.com',
            hintColor: Colors.white12,
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),

        UikitNeumorphicContainer(
          radius: 1,
          padding: 0,
          color: HexColor("17223B"),
          leftShadowColor: HexColor("182C45"),
          rightShadowColor: Colors.black,
          innerShadowColor: Colors.black,
          rightInnerShadowColor: HexColor("1A3850"),
          child: UikitInput(
            fieldName: 'PASSWORD',
            isSecret: true,
            fieldNameColor: Colors.blueGrey[100],
            inputColor: Colors.blueGrey[100],
            backgroundColor: Colors.transparent,
            hintText: 'xxxxxxxx',
            hintColor: Colors.white12,
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),

        UikitNeumorphicContainer(
          radius: 1,
          padding: 0,
          color: HexColor("17223B"),
          leftShadowColor: HexColor("182C45"),
          rightShadowColor: Colors.black,
          innerShadowColor: Colors.black,
          rightInnerShadowColor: HexColor("1A3850"),
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
