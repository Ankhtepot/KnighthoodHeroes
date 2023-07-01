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