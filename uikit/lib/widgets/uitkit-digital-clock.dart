import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class UitKitDigitalClock extends StatefulWidget {

  final double timeSize;
  final double dateSize;
  final Color color;
  final Color shadowColor;
  final double blurRadius;
  final bool date;

  UitKitDigitalClock({
    Key key,
    this.timeSize = 25,
    this.dateSize = 20,
    this.color = Colors.white,
    this.shadowColor = Colors.white,
    this.blurRadius = 15.0,
    this.date = false,
  }) : super(key: key);

  @override
  _UitKitDigitalClockState createState() => _UitKitDigitalClockState(
    timeSize: this.timeSize,
    dateSize: this.dateSize,
    color: this.color,
    shadowColor: this.shadowColor,
    blurRadius: this.blurRadius,
    date: this.date,
  );
}

class _UitKitDigitalClockState extends State<UitKitDigitalClock> {
  String _timeString = '';
  String _date = '';

  final double timeSize;
  final double dateSize;
  final Color color;
  final Color shadowColor;
  final double blurRadius;
  final bool date;

  _UitKitDigitalClockState({
    this.timeSize = 25,
    this.dateSize = 20,
    this.color = Colors.white,
    this.shadowColor = Colors.white,
    this.blurRadius = 15.0,
    this.date = false,
  });

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
              color: color,
              fontSize: this.timeSize,
              shadows: [
                BoxShadow(
                  color: this.shadowColor,
                  blurRadius: this.blurRadius,
                ),
              ],
            ),
          ),
          this.date ?
          Text(
            _date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: this.dateSize,
              shadows: [
                BoxShadow(
                  color: this.shadowColor,
                  blurRadius: this.blurRadius,
                ),
              ],
            ),
          ) : Text('')
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
