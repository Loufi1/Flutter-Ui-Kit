import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/pages/loginPage/loginTitle.dart';
import 'package:uikit/pages/loginPage/loginForm.dart';
import 'package:uikit/pages/loginPage/loginFooter.dart';
import 'package:uikit/services/colorConverter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("E0E5EC"),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 1,),
                      LoginTitle(),
                      Spacer(flex: 1),
                      LoginForm(),
                      Spacer(flex: 1),
                      LoginFooter(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
