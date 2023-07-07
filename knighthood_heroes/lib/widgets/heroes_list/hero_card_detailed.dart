import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/widgets/enemy_type_badge.dart';
import 'package:knighthood_heroes/widgets/heroes_list/skill_detailed.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

class HeroCardDetailed extends StatelessWidget {
  const HeroCardDetailed(this.hero, {super.key});

  final KnighthoodHero hero;

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(children: [
                    Image.asset(
                      fit: BoxFit.fill,
                      hero.avatarPath,
                      width: 100,
                      height: 100,
                    ),
                    Positioned(
                      bottom: 2,
                      right: 2,
                      child: EnemyTypeBadge(hero.strongVs),
                    ),
                  ]),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            hero.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          TextRoundedWithBackground(
                            hero.rarity.toString().textFromEnumName(),
                            backgroundColor: getRarityColor(hero.rarity),
                            fontWeight: FontWeight.bold,
                            textColor: Colors.black,
                          ),
                          const SizedBox(width: 5),
                          EnemyTypeBadge(hero.strongVs),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Class: ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            hero.heroClass.name.capitalize(),
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Alignment: ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            hero.heroType.name.capitalize(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ), // Hero image and name
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextRoundedWithBackground('Max Stars Bonus:', horizontalPadding: 10),
                          const SizedBox(width: 5),
                          ...KnighthoodHero.getStars(hero.rarity),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        hero.fullStarsEffect,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ), // Stars bonus
              const SizedBox(height: 5),
              SkillDetailed(hero.baseSkill, true), // Base skill
            ],
          ),
        ),
      );
}
