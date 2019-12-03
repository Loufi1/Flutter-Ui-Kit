import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-toolbar.dart';
import 'package:uikit/widgets/uitkit-digital-clock.dart';
import 'package:uikit/widgets/uikit-alarm-card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UiKit',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        bottomNavigationBar: UikitToolbar(),
        appBar: AppBar(
          title: Text('Uikit'),
          backgroundColor: Colors.blueGrey[900],
          elevation: 200.0,
        ),
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
                  child: UikitAlarmCard(),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
