import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-toolbar.dart';
import 'package:uikit/widgets/uitkit-clock.dart';

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
        ),
        body: SafeArea(
          child: Center(
            child: UikitClock(),
          ),
        ),
      ),
    );
  }
}
