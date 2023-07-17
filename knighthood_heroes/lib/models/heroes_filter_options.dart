import 'package:knighthood_heroes/data/enums.dart';

class HeroesFilterOptions {
  const HeroesFilterOptions({
    this.heroClass = EHeroClass.none,
    this.heroType = EHeroType.none,
    this.rarity = ERarity.none,
    this.enemyType = EEnemyType.none,

    this.baseSkillClass = ESkillClass.none,
    this.baseSkillTarget = ESkillEffect.none,
    this.baseSkillEffect = ESkillEffect.none,
    this.baseSkillChanceToDebuff = ESkillDebuff.none,
    this.baseSkillStrongVsDebuff = ESkillDebuff.none,

    this.rageSkillClass = ESkillClass.none,
    this.rageSkillTarget = ESkillEffect.none,
    this.rageSkillEffect = ESkillEffect.none,
    this.rageSkillChanceToDebuff = ESkillDebuff.none,
    this.rageSkillStrongVsDebuff = ESkillDebuff.none,
  });

  final EHeroClass heroClass;
  final EHeroType heroType;
  final ERarity rarity;
  final EEnemyType enemyType;

  final ESkillClass baseSkillClass;
  final ESkillEffect baseSkillTarget;
  final ESkillEffect baseSkillEffect;
  final ESkillDebuff baseSkillChanceToDebuff;
  final ESkillDebuff baseSkillStrongVsDebuff;

  final ESkillClass rageSkillClass;
  final ESkillEffect rageSkillTarget;
  final ESkillEffect rageSkillEffect;
  final ESkillDebuff rageSkillChanceToDebuff;
  final ESkillDebuff rageSkillStrongVsDebuff;
}
