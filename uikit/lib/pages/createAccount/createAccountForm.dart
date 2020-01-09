import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-input.dart';
import 'package:uikit/widgets/uikit-card-button.dart';

class CreateAccountForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UikitInput(
          fieldName: 'E-MAIL',
          fieldNameColor: Colors.grey,
          inputColor: Colors.blueGrey[500],
          backgroundColor: Colors.grey[200],
          hintText: 'loufi1@Uikit.com',
          hintColor:  Colors.grey[400],
        ),

        Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10)),

        UikitInput(
          fieldName: 'NAME',
          fieldNameColor: Colors.grey,
          inputColor: Colors.blueGrey[500],
          backgroundColor: Colors.grey[200],
          hintText: 'Loufi',
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

        UikitInput(
          fieldName: 'CONFIRM PASSWORD',
          isSecret: true,
          fieldNameColor: Colors.grey,
          inputColor: Colors.blueGrey[500],
          backgroundColor: Colors.grey[200],
          hintText: 'xxxxxxxx',
          hintColor:  Colors.grey[400],
        ),

        Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10)),

        UikitCardButton(
          buttonName: 'Create Account',
          onTap: () {
            Navigator.pop(context);
          }
        ),
      ],
    );
  }
}
