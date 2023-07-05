import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/skill.dart';

class KnighthoodHero {
  KnighthoodHero(
    this.name,
    this.rarity,
    this.heroClass,
    this.heroType,
    this.strongVs,
    this.baseSkill,
    this.rageSkill,
  );

  final String name;
  final ERarity rarity;
  final EHeroClass heroClass;
  final EHeroType heroType;
  final EEnemyType strongVs;
  final Skill baseSkill;
  final Skill rageSkill;

  String get avatarPath => 'assets/images/heroes/$name.jpg';
}
