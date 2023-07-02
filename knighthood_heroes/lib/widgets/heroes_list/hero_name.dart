import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/models/hero.dart';

class HeroName extends StatelessWidget {
  const HeroName(this.hero, {super.key});

  final KnighthoodHero hero;

  @override
  Widget build(BuildContext context) {
    Color rarityColor = getRarityColor(hero.rarity);
    return Container(
      decoration: BoxDecoration(
        color: rarityColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          hero.name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
