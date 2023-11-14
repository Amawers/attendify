import 'package:flutter/material.dart';
import 'package:my_app/src/utils/theme/widget_themes/text_field_theme.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme
  );
}