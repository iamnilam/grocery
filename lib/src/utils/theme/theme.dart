import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/src/utils/theme/widget_theme/text_theme.dart';

class GAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, textTheme: TTextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark, textTheme: TTextTheme.darkTextTheme);
}

// https://www.youtube.com/watch?v=a6IX3tj1wtk&list=PL5jb9EteFAODpfNJu8U2CMqKFp4NaXlto&index=5
