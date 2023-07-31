import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/global.dart';

class TextRoundedWithBackground extends StatelessWidget {
  const TextRoundedWithBackground(this.text,
      {super.key,
      this.textColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.horizontalPadding = 5,
      this.borderRadius = 10})
      : fontStyle = EFontFamilly.cabin;
  const TextRoundedWithBackground.cabin(this.text,
      {super.key,
      this.textColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w600, //semi-bold
      this.horizontalPadding = 5,
      this.borderRadius = 10})
      : fontStyle = EFontFamilly.cabin;
  const TextRoundedWithBackground.header(this.text,
      {super.key,
      this.textColor = Colors.white,
      this.backgroundColor = knighhoodTitleColor,
      this.fontSize = 20,
      this.fontWeight = FontWeight.bold,
      this.horizontalPadding = 5,
      this.borderRadius = 10})
      : fontStyle = EFontFamilly.troika;

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double horizontalPadding;
  final double borderRadius;
  final EFontFamilly fontStyle;

  TextStyle get getTextStyle {
    switch (fontStyle) {
      case EFontFamilly.cabin:
        return GoogleFonts.cabin(textStyle: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: textColor));
      case EFontFamilly.troika:
        return TextStyle(
          fontFamily: 'Troika',
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        );
      default:
        return GoogleFonts.cabin(textStyle: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: textColor));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Text(
          fontStyle == EFontFamilly.troika ? text.toUpperCase() : text,
          textAlign: TextAlign.center,
          style: getTextStyle,
        ),
      ),
    );
  }
}
