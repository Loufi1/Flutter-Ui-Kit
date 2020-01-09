import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Ui',
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            TextSpan(
              text: 'Kit',
              style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ]
      ),
    );
  }
}
