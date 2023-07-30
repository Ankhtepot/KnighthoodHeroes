import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/widgets/rarity_badge.dart';

class RarityButton extends StatelessWidget {
  const RarityButton(
      {required this.rarity, required this.onTap, required this.isSelected, super.key, this.fontSize = 16});

  final ERarity rarity;
  final Function(ERarity rarity) onTap;
  final bool isSelected;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final bool isNone = rarity == ERarity.none;
    final Color buttonBackgroundColor = isSelected ? getRarityColor(rarity) : getRarityColor(rarity).withOpacity(0.5);
    final Color buttonTextColor = isSelected ? Colors.black : Colors.white;

    return Expanded(
      child: ElevatedButton(
        onPressed: () => onTap(rarity),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          padding: EdgeInsets.zero,
        ),
        child: isNone
            ? Text(
                'All rarities',
                style: TextStyle(color: buttonTextColor, fontWeight: FontWeight.bold, fontSize: fontSize),
              )
            : RarityBadge(
                rarity,
                fontSize: fontSize,
                textColor: buttonTextColor,
                backgroundColor: isSelected ? Colors.transparent : getRarityColor(rarity).withOpacity(0),
              ),
      ),
    );
  }
}
