import 'package:flutter/material.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: Color(0xff081631),
          floatingLabelStyle: TextStyle(color: Color(0xff081631)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xff081631))));
}
