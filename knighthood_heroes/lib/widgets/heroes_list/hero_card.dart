import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_name.dart';

class HeroCard extends StatelessWidget {
  const HeroCard(this.hero, {super.key});
  final KnighthoodHero hero;

  @override
  Widget build(BuildContext context) {
    Color rarityColor = getRarityColor(hero.rarity);

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
        child: Row(
          children: [
            Image.asset(
              hero.avatarPath,
              width: 60,
              height: 60,
            ),
            const SizedBox(width: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    HeroName(hero),
                  ],
                ),
                Row(
                  children: [Text('second line')],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
