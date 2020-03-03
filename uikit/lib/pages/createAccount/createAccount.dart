import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/pages/createAccount/createAccountForm.dart';
import 'package:uikit/services/colorConverter.dart';

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
            child: Container(
              color: HexColor("17223B"),
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 1,),
                    Image.asset("./assets/cerf.png", width: 100, height: 100,),
                    Spacer(flex: 1,),
                    CreateAccountForm(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
