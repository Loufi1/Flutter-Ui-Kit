import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UiKit',
      home: Scaffold(
        body: Container(
          color: Colors.blueGrey[50],
        ),
      ),
    );
  }
}
