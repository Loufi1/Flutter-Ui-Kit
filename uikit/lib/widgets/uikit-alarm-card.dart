import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-card.dart';

class UikitAlarmCard extends StatelessWidget {

  final String alarmName;
  final String from;
  final String to;
  final String transport;
  final String departureHour;
  final String arrivedHour;

  UikitAlarmCard({
    this.alarmName = 'Default',
    this.from = '42 Uikit Street, New-York',
    this.to = '127.0.0.1:8080',
    this.transport = 'metro',
    this.departureHour = '23h42',
    this.arrivedHour = '00h42',
  });

  @override
  Widget build(BuildContext context) {
    return UikitCard(
      width: 320,
      height: 400,
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
                    this.alarmName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1),
                  Switch(
                    onChanged: (bool value) {

                    },
                    value: true,
                    activeColor: Colors.blueGrey,
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
                    this.from,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1),
                  Text(
                    this.departureHour,
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
                    Icons.location_on,
                    color: Colors.blue,
                    size: 34.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    this.to,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1),
                  Text(
                    this.arrivedHour,
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
                    Icons.directions_car,
                    color: Colors.pinkAccent,
                    size: 34.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    this.transport,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Center(
                child: Text(
                  this.departureHour,
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
