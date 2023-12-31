import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/widgets/enemy_type_badge.dart';
import 'package:knighthood_heroes/widgets/heroes_list/skill_detailed.dart';
import 'package:knighthood_heroes/widgets/rarity_banner.dart';

const double kHeaderTextSize = 18;

class HeroCardDetailed extends StatelessWidget {
  const HeroCardDetailed(this.hero, {super.key});

  final KnighthoodHero hero;

  @override
  Widget build(BuildContext context) => Card(
        color: Colors.lightBlue[100],
        elevation: 5,
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
                      bottom: 0,
                      right: 0,
                      child: EnemyTypeBadge(
                        hero.strongVs,
                        size: 35,
                      ),
                    ),
                  ]),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RarityBanner(
                            hero.rarity,
                            size: 25,
                          ),
                          const SizedBox(width: 5),
                          Image.asset(strongVsIconPath, width: 28, height: 28),
                          const Icon(Icons.arrow_forward_sharp, size: 28, color: Color.fromARGB(255, 72, 72, 72)),
                          EnemyTypeBadge(hero.strongVs, size: 30),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            hero.name,
                            style: commonTextStyle(
                              fontSize: kHeaderTextSize,
                              fontWeight: FontWeight.bold,
                              color: cardTextColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Class: ',
                            style: commonTextStyle(
                              fontSize: kHeaderTextSize,
                              color: cardTextColor,
                            ),
                          ),
                          Text(
                            hero.heroClass.name.capitalize(),
                            style: commonTextStyle(
                              fontSize: kHeaderTextSize,
                              fontWeight: FontWeight.bold,
                              color: cardTextColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Alignment: ',
                            style: commonTextStyle(
                              fontSize: kHeaderTextSize,
                              color: cardTextColor,
                            ),
                          ),
                          Text(
                            hero.heroType.name.capitalize(),
                            style: commonTextStyle(
                              fontSize: kHeaderTextSize,
                              fontWeight: FontWeight.bold,
                              color: cardTextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ), // Hero image and name
              const SizedBox(height: 5),
              Card(
                color: Colors.yellow[100],
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
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
                        style: commonTextStyle(fontStyle: FontStyle.italic, fontSize: 16, color: cardTextColor),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              SkillDetailed(hero.baseSkill, true, backgroundColor: Colors.grey.shade100), // Base skill
              const SizedBox(height: 5),
              SkillDetailed(
                hero.rageSkill,
                false,
                backgroundColor: Colors.orange.shade50,
              ), // Ultimate skill
            ],
          ),
        ),
      );
}
