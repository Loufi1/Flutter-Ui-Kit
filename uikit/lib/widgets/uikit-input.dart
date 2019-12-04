import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UikitInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blueGrey,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
        ),
        labelText: 'Username',
        prefixIcon: const Icon(Icons.person, color: Colors.white),
        prefixText: ' ',
      ),
    );
  }
}
