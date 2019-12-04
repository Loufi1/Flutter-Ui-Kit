import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-input.dart';
import 'package:uikit/widgets/uikit-toolbar.dart';
import 'package:uikit/widgets/uitkit-digital-clock.dart';
import 'package:uikit/widgets/uikit-alarm-card.dart';

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
                    blurRadius: 10,
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
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        UikitAlarmCard(
                          width: 320,
                          height: 200,
                          backgroundColor: Colors.blueGrey[800],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10),),
                        UikitAlarmCard(
                          width: 320,
                          height: 200,
                          backgroundColor: Colors.blueGrey[800],
                          alarmName: 'TEPITEK',
                        ),
                        UikitAlarmCard(
                          width: 320,
                          height: 200,
                          backgroundColor: Colors.blueGrey[800],
                          alarmName: 'Ranger la maison',
                        ),
                        UikitAlarmCard(
                          width: 320,
                          height: 200,
                          backgroundColor: Colors.blueGrey[800],
                          alarmName: 'Call important',
                        ),
                        UikitAlarmCard(
                          width: 320,
                          height: 200,
                          backgroundColor: Colors.blueGrey[800],
                          alarmName: 'XXX',
                        ),
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
