import 'package:flutter/material.dart';

class TextRoundedWithBackground extends StatelessWidget {
  TextRoundedWithBackground(this.text,
      {super.key,
      this.textColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.padding = 0,
      this.borderRadius = 10});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
