import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/pages/loginPage/loginForm.dart';
import 'package:uikit/pages/loginPage/loginFooter.dart';
import 'package:uikit/services/colorConverter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("17223B"),
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
                      Image.asset("./assets/cerf.png", width: 150, height: 150,),
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
