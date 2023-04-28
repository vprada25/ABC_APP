import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.indigoAccent, width: 2)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.indigoAccent, width: 4)),
        hintText: hintText,
        labelText: labelText,
        //labelStyle: const TextStyle(color: Colors.white),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: Colors.indigoAccent)
            : null);
  }
}
