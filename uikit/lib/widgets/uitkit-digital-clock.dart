import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class UitKitDigitalClock extends StatefulWidget {
  UitKitDigitalClock({Key key}) : super(key: key);

  @override
  _UitKitDigitalClockState createState() => _UitKitDigitalClockState();
}

class _UitKitDigitalClockState extends State<UitKitDigitalClock> {
  String _timeString;
  String _date;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            _timeString,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
              shadows: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 15.0,
                ),
              ],
            ),
          ),
          Text(
            _date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 10,
              shadows: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 15.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    final String formattedDate = _formatDate(now);
    setState(() {
      _timeString = formattedDateTime;
      _date = formattedDate;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm:ss').format(dateTime);
  }

  String _formatDate(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }
}
