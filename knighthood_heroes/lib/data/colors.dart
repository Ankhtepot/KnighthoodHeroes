import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';

Color getRarityColor(ERarity rarity) {
  switch (rarity) {
    case ERarity.common:
      return Colors.grey;
    case ERarity.rare:
      return Colors.green;
    case ERarity.epic:
      return Colors.blue;
    case ERarity.legendary:
      return Colors.purple;
    case ERarity.unique:
      return Colors.yellow;
    case ERarity.mythic:
      return Colors.lightBlue;
    default:
      return Colors.white;
  }
}

List<Color> get appBarGradientColors => [
      const Color.fromARGB(255, 132, 196, 248),
      const Color.fromARGB(255, 116, 207, 252),
    ];

List<Color> get backgroundGradientColors => [
      Colors.blue,
      const Color.fromARGB(255, 125, 214, 255),
    ];

// const Color appBarTextColor = Color.fromARGB(255, 0, 140, 255);
const Color appBarTextColor = Colors.black;
const Color cardBackgroundColor = Color.fromARGB(255, 227, 242, 253); // Colors.blue.shade50;
