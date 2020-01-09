import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UikitInput extends StatelessWidget {

  final String fieldName;
  final bool isSecret;
  final Color fieldNameColor;
  final Color inputColor;
  final Color backgroundColor;
  final Color hintColor;
  final String hintText;

  const UikitInput({
    @required this.fieldName,
    this.isSecret = false,
    this.fieldNameColor = Colors.grey,
    this.inputColor = Colors.blue,
    this.backgroundColor = Colors.blueGrey,
    this.hintColor =  Colors.white,
    this.hintText = 'default@area.com',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.fieldName,
              style: TextStyle(
                color: this.fieldNameColor,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
            TextField(
              cursorColor: Colors.black,
              obscureText: this.isSecret ? true : false,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: this.hintText,
                hintStyle: TextStyle(color: this.hintColor),
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: this.inputColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
