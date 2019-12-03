import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-card.dart';

class UikitToolbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          UikitCard(
            width: 75,
            height: 75,
            borderRadius: 20.0,
            child: Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 34.0,
            ),
          ),
          UikitCard(
            width: 75,
            height: 75,
            borderRadius: 20.0,
            child: Icon(
              Icons.airplanemode_active,
              color: Colors.blue[600],
              size: 34.0,
            ),
          ),
          UikitCard(
            width: 75,
            height: 75,
            borderRadius: 20.0,
            child: Icon(
              Icons.alarm,
              color: Colors.grey[900],
              size: 34.0,
            ),
          ),
          UikitCard(
            width: 75,
            height: 75,
            borderRadius: 20.0,
            child: Icon(
              Icons.battery_full,
              color: Colors.green[500],
              size: 34.0,
            ),
          )
        ],
      ),
    );
  }
}
