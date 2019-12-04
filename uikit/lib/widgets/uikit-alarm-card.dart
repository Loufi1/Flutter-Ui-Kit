import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/widgets/uikit-card.dart';

class UikitAlarmCard extends StatelessWidget {

  final String alarmName;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;

  UikitAlarmCard({
    this.alarmName = 'Default',
    this.width = 320,
    this.height = 200,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return UikitCard(
      width: this.width,
      height: this.height,
      borderRadius: 20.0,
      blurRadius: 0,
      color: this.backgroundColor,
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.alarm,
                      color: this.textColor,
                      size: 34.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Text(
                      this.alarmName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: this.textColor,
                      ),
                    ),
                    Spacer(flex: 1),
                    Switch(
                      onChanged: (bool value) {},
                      value: true,
                      activeColor: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Départ:',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                        Text(
                          '8h00',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    Spacer(flex: 1),


                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          '+ 10min',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),


                    Spacer(flex: 1),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Arrivée:',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                        Text(
                          '8h42',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                        ),
                        Row(
                          children: <Widget>[

                            Container (
                              width: 100,
                              child: Column (
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '42 rue du loufi',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),


                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            UikitCard(
                                width: 28,
                                height: 28,
                                borderRadius: 10.0,
                                child: Center(
                                  child: Text(
                                    'L',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                            UikitCard(
                                width: 28,
                                height: 28,
                                borderRadius: 10.0,
                                child: Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                            UikitCard(
                                width: 28,
                                height: 28,
                                borderRadius: 10.0,
                                child: Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                            UikitCard(
                                width: 28,
                                height: 28,
                                borderRadius: 10.0,
                                child: Center(
                                  child: Text(
                                    'J',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                            UikitCard(
                                width: 28,
                                height: 28,
                                borderRadius: 10.0,
                                child: Center(
                                  child: Text(
                                    'V',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                            UikitCard(
                                width: 28,
                                height: 28,
                                borderRadius: 10.0,
                                child: Center(
                                  child: Text(
                                    'S',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                            UikitCard(
                                width: 28,
                                height: 28,
                                borderRadius: 10.0,
                                child: Center(
                                  child: Text(
                                    'D',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                          ],
                        )
                      ],
                    ),


                    Spacer(flex: 1),


                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.directions_car,
                          color: Colors.blueGrey,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
