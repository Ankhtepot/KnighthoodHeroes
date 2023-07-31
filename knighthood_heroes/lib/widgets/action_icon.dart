import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/screens/heroes.dart';

class ActionIcon extends StatelessWidget {
  const ActionIcon(
    this.icon, {
    super.key,
    this.iconSize = 32,
    required this.onTap,
  });

  final IconData icon;
  final double iconSize;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: IconButton(
        visualDensity: kVisualDensity,
        icon: Icon(
          icon,
          color: appBarTextColor,
          size: iconSize,        
        ),
        onPressed: onTap,
      ),
    );
  }
}
