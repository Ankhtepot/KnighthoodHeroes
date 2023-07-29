import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';

class RarityBadge extends StatelessWidget {
  const RarityBadge(this.rarity, {super.key, this.fontSize = 16,});

  final ERarity rarity;
  final double fontSize;

  @override
  Widget build(BuildContext context) => TextRoundedWithBackground(
        rarity.toString().textFromEnumName(),
        backgroundColor: getRarityColor(rarity),
        fontWeight: FontWeight.bold,
        textColor: Colors.black,
        fontSize: fontSize,
      );
}
