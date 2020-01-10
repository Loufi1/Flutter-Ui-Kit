import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/pages/loginPage/loginTitle.dart';
import 'package:uikit/pages/createAccount/createAccountForm.dart';
import 'package:uikit/widgets/uikit-painter.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: CustomPaint(
              size: Size(width, height),
              painter: UikitPainter(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 1,),
                      LoginTitle(),
                      Spacer(flex: 1,),
                      CreateAccountForm(),
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
