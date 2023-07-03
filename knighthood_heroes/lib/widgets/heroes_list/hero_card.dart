import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/widgets/heroes_list/skill_description.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

String attackImage = 'assets/images/attack.png';
String healImage = 'assets/images/heal.png';

class HeroCard extends StatelessWidget {
  const HeroCard(this.hero, {super.key});
  final KnighthoodHero hero;

  @override
  Widget build(BuildContext context) {
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
                    TextRoundedWithBackground(
                      hero.name,
                      textColor: Colors.black,
                      backgroundColor: getRarityColor(hero.rarity),
                      fontWeight: FontWeight.bold,
                      horizontalPadding: 10,
                    ),
                    const SizedBox(width: 5),
                    TextRoundedWithBackground(hero.heroClass.name.capitalize()),
                    const SizedBox(width: 5),
                    TextRoundedWithBackground(hero.heroType.name.capitalize()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(children: [SkillDescription(hero.baseSkills, true)]),
                const SizedBox(height: 5),
                Row(children: [SkillDescription(hero.rageSkill, false)]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
