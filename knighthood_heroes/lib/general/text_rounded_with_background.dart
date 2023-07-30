import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/global.dart';

class TextRoundedWithBackground extends StatelessWidget {
  const TextRoundedWithBackground(this.text,
      {super.key,
      this.textColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.horizontalPadding = 5,
      this.borderRadius = 10});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double horizontalPadding;
  final double borderRadius;

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
          text,
          textAlign: TextAlign.center,
          style: getFont.copyWith(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
