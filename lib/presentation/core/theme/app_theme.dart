import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeomTheme {
  static ThemeData light(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: GoogleFonts.manropeTextTheme(),
    );
  }
}
