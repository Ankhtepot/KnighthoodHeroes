import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/skill.dart';

class Hero {
  Hero(
    this.name,
    this.avatarPath,
    this.rarity,
    this.heroClass,
    this.heroType,
    this.strongVs,
    this.baseSkills,
    this.rageSkill,
  );

  final String name;
  final String avatarPath;
  final ERarity rarity;
  final EHeroClass heroClass;
  final EHeroType heroType;
  final EEnemyType strongVs;
  final Skill baseSkills;
  final Skill rageSkill;
}
