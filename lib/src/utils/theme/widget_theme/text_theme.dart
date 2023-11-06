import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headline2: GoogleFonts.libreFranklin(
        color: Color(0xFF2A3747),
      ),
      subtitle2: GoogleFonts.frankRuhlLibre(color: Color(0xFF707070)));
  static TextTheme darkTextTheme = TextTheme(
      headline2: GoogleFonts.libreFranklin(
        color: Colors.white70,
      ),
      subtitle2: GoogleFonts.frankRuhlLibre(color: Colors.white60));
}
