import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-input.dart';
import 'package:uikit/widgets/uikit-card-button.dart';
import 'package:uikit/pages/mainPage/mainPage.dart';

class LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UikitInput(
          fieldName: 'USERNAME',
          fieldNameColor: Colors.grey,
          inputColor: Colors.blueGrey[500],
          backgroundColor: Colors.grey[200],
          hintText: 'loufi1@uikit.com',
          hintColor:  Colors.grey[400],
        ),

        Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10)),

        UikitInput(
          fieldName: 'PASSWORD',
          isSecret: true,
          fieldNameColor: Colors.grey,
          inputColor: Colors.blueGrey[500],
          backgroundColor: Colors.grey[200],
          hintText: 'xxxxxxxx',
          hintColor:  Colors.grey[400],
        ),

        Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10)),

        UikitCardButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          }
        ),
      ],
    );
  }
}
