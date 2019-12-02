import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UiKit',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Container(
            child: Center(
              child: UikitCard(
                width: 100,
                height: 100,
                borderRadius: 20.0,
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 34.0,
                ),
              ),
            )
          ),
        )
      ),
    );
  }
}
