import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-card.dart';

class UikitAlarmCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return UikitCard(
      width: 320,
      height: 350,
      borderRadius: 20.0,
      blurRadius: 0,
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.alarm,
                    color: Colors.black,
                    size: 34.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    'My alarm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.green,
                    size: 34.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    '12 Rue de la poutre, Paris',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1),
                  Text(
                    '12h43',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 34.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    '14 Rue de la flemme, Paris',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1),
                  Text(
                    '13h20',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.airplanemode_active,
                    color: Colors.pinkAccent,
                    size: 34.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    'Métro -> bus -> marche',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              Center(
                child: Text(
                  '12h43',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
