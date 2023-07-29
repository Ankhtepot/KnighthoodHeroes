import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/widgets/rarity_badge.dart';

class RarityButton extends StatelessWidget {
  const RarityButton(
      {required this.rarity, required this.onPressed, required this.color, super.key, this.fontSize = 16});

  final ERarity rarity;
  final Function(ERarity rarity) onPressed;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => onPressed(rarity),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero,
        ),
        child: RarityBadge(rarity, fontSize: fontSize),
      ),
    );
  }
}
