import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';

Color getRarityColor(ERarity rarity) => switch (rarity) {
      ERarity.common => knighthoodCommonColor,
      ERarity.rare => knighthoodRareColor,
      ERarity.epic => knighthoodEpicColor,
      ERarity.legendary => knighthoodLegendaryColor,
      ERarity.unique => knighthoodUniqueColor,
      ERarity.mythic => knighthoodMythicColor,
      _ => Colors.white
    };

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
const Color cardTextColor = Colors.black;
const Color cardBackgroundColor = Color.fromARGB(180, 227, 242, 253); // Colors.blue.shade50;
const Color buttonBackgroundBlueColor = Color.fromARGB(255, 116, 207, 252);
const Color knighhoodTitleColor = Color.fromARGB(255, 24, 53, 109);
const Color knighthoodContentColor = Color.fromARGB(255, 3, 19, 64);
const Color knighthoodTextColor = Color.fromARGB(255, 250, 250, 250);
const Color knighthoodCommonColor = Color.fromARGB(255, 92, 102, 127);
const Color knighthoodRareColor = Color.fromARGB(255, 77, 170, 114);
const Color knighthoodEpicColor = Color.fromARGB(255, 75, 123, 220);
const Color knighthoodLegendaryColor = Color.fromARGB(255, 155, 43, 221);
const Color knighthoodUniqueColor = Color.fromARGB(255, 236, 186, 64);
const Color knighthoodMythicColor = Color.fromARGB(255, 107, 219, 251);
