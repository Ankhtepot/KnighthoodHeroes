import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/screens/heroes.dart';
import 'package:knighthood_heroes/screens/weapons.dart';

class Navigation {
  static void setScreen(BuildContext context, screenId) {
    Navigator.of(context).pop();
    if (screenId == EScreens.weapons) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => const WeaponsScreen(),
        ),
      );
    }

    if (screenId == EScreens.heroes) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => const Heroes(),
        ),
      );
    }
  }
}
