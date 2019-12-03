import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class UikitClock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnalogClock(
      width: 200.0,
      isLive: true,
      hourHandColor: Colors.white,
      minuteHandColor: Colors.white,
      showSecondHand: false,
      numberColor: Colors.white,
      showNumbers: true,
      textScaleFactor: 1.4,
      showTicks: true,
      showDigitalClock: false,
      datetime: DateTime(2019, 1, 1, 9, 12, 15),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2.0, color: Colors.blueGrey[800],
        ),
        color: Colors.blueGrey[800],
        shape: BoxShape.circle,
        boxShadow: [
          new BoxShadow(
            color: Colors.white,
            blurRadius: 100.0,
          ),
        ]
      ),
    );
  }
}
