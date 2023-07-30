import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/skill.dart';

class KnighthoodHero {
  KnighthoodHero(
    this.name,
    this.rarity,
    this.heroClass,
    this.heroType,
    this.strongVs,
    this.fullStarsEffect,
    this.baseSkill,
    this.rageSkill,
  );

  final String name;
  final ERarity rarity;
  final EHeroClass heroClass;
  final EHeroType heroType;
  final EEnemyType strongVs;
  final String fullStarsEffect;
  final Skill baseSkill;
  final Skill rageSkill;

  static String getEnemyTypeImagePath(EEnemyType enemyType) =>
      'assets/images/enemy_types/${enemyType.name.capitalize()}_Diamond.png';

  static int getStarsCount(ERarity rarity) => switch (rarity) {
        ERarity.common => 3,
        ERarity.rare => 4,
        ERarity.epic => 5,
        ERarity.legendary => 6,
        ERarity.unique => 7,
        _ => 0,
      };

  static List<Widget> getStars(ERarity rarity) {
    List<Widget> starsList = [];
    for (var i = 0; i < getStarsCount(rarity); i++) {
      starsList.add(
        const DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Icon(Icons.star, color: Colors.yellow)),
      );
      starsList.add(const SizedBox(width: 2));
    }
    return starsList;
  }

  String get avatarPath {
    String sanitizedName = name.replaceAll(' ', '');
    return 'assets/images/heroes/$sanitizedName.jpeg';
  }
}
