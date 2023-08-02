import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle commonTextStyle({
  double fontSize = 16,
  Color color = Colors.white,
  FontWeight fontWeight = FontWeight.normal,
  FontStyle fontStyle = FontStyle.normal,
}) {
  return GoogleFonts.cabin(
      textStyle: TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontStyle: fontStyle,
  ));
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
