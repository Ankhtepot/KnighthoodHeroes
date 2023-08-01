import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';

class RarityBadge extends StatelessWidget {
  const RarityBadge(
    this.rarity, {
    super.key,
    this.fontSize = 16,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.transparent,
    this.noneText = 'All',
  });

  final ERarity rarity;
  final double fontSize;
  final Color textColor;
  final Color backgroundColor;
  final String noneText;

  @override
  Widget build(BuildContext context) {
    Color usedBackgroundColor = backgroundColor == Colors.transparent ? getRarityColor(rarity) : backgroundColor;

    return TextRoundedWithBackground(
      rarity == ERarity.none ? noneText : rarity.toString().textFromEnumName(),
      backgroundColor: usedBackgroundColor,
      fontWeight: FontWeight.bold,
      textColor: textColor,
      fontSize: fontSize,
    );
  }
}
