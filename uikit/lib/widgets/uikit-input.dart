import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UikitInput extends StatelessWidget {

  final Color textColor;
  final Icon icon;
  final bool filled;
  final Color fillColor;
  final String label;

  UikitInput({
    this.textColor = Colors.white,
    this.filled = true,
    this.fillColor = Colors.blueGrey,
    this.label = '',
    this.icon = null,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: this.textColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: this.fillColor,
        labelStyle: TextStyle(
          color: this.textColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: this.textColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: this.textColor),
        ),
        labelText: this.label,
        prefixIcon: this.icon != null ? this.icon: null,
        prefixText: ' ',
      ),
    );
  }
}
