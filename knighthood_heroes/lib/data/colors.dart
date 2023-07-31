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

List<Color> get backgroundGradientColorsReversed => [
      const Color.fromARGB(255, 125, 214, 255),
      Colors.blue,
    ];

// const Color appBarTextColor = Color.fromARGB(255, 0, 140, 255);
const Color appBarTextColor = Colors.white;
const Color cardBackgroundColor = Color.fromARGB(180, 227, 242, 253); // Colors.blue.shade50;
const Color buttonBackgroundBlueColor = Color.fromARGB(255, 116, 207, 252);
const Color knighhoodTitleColor = Color.fromARGB(255, 24, 53, 109);
const Color knighthoodContentColor = Color.fromARGB(255, 3, 19, 64);
