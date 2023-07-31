import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle normalTextStyle({double fontSize = 16, Color color = Colors.white, FontWeight fontWeight = FontWeight.normal}) {
  return GoogleFonts.cabin(
      textStyle: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: color));
}

TextStyle headerTextStyle({double fontSize = 20, Color color = Colors.white}) {
  return TextStyle(
    fontFamily: 'Troika',
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: color,
    letterSpacing: 1.5,
  );
}
