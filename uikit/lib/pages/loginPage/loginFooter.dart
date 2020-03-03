import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/pages/createAccount/createAccount.dart';

class LoginFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Text(
            'Forgot password ?',
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Spacer(flex: 1),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateAccountPage()),
            );
          },
          child: Text(
            'Create account',
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
