import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-toolbar.dart';
import 'package:uikit/widgets/uitkit-digital-clock.dart';
import 'package:uikit/widgets/uikit-alarm-card.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: CustomScroll(),
          child: child,
        );
      },
      title: 'UiKit',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        bottomNavigationBar: UikitToolbar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                Center(
                  child: UitKitDigitalClock(
                    timeSize: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Center(
                  child: Container(
                    height: 400,
                    width: 330,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        UikitAlarmCard(),
                        UikitAlarmCard(alarmName: 'Tepitek'),
                        UikitAlarmCard(alarmName: 'Code review',),
                        UikitAlarmCard(alarmName: 'Go buy a gift for me',),
                      ],
                    ),
                  )
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}

class CustomScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
