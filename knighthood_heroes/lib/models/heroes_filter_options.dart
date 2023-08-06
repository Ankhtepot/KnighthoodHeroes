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

  HeroesFilterOptions withHeroClass(EHeroClass newHeroClass) {
    return HeroesFilterOptions(
      heroClass: newHeroClass,
      heroType: heroType,
      rarity: rarity,
      enemyType: enemyType,
      baseSkillClass: baseSkillClass,
      baseSkillTarget: baseSkillTarget,
      baseSkillEffect: baseSkillEffect,
      baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
      baseSkillChanceToDebuff: baseSkillChanceToDebuff,
      rageSkillClass: rageSkillClass,
      rageSkillTarget: rageSkillTarget,
      rageSkillEffect: rageSkillEffect,
      rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
      rageSkillChanceToDebuff: rageSkillChanceToDebuff,
    );
  }

  HeroesFilterOptions withHeroType(EHeroType newHeroType) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: newHeroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withRarity(ERarity newRarity) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: newRarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withEnemyType(EEnemyType newEnemyType) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: newEnemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withBaseSkillClass(ESkillClass newBaseSkillClass) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: newBaseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withBaseSkillTarget(ESkillEffect newBaseSkillTarget) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: newBaseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withBaseSkillEffect(ESkillEffect newBaseSkillEffect) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: newBaseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withBaseSkillChanceToDebuff(ESkillDebuff newBaseSkillChanceToDebuff) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: newBaseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withBaseSkillStrongVsDebuff(ESkillDebuff newBaseSkillStrongVsDebuff) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: newBaseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withRageSkillClass(ESkillClass newRageSkillClass) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: newRageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withRageSkillTarget(ESkillEffect newRageSkillTarget) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: newRageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withRageSkillEffect(ESkillEffect newRageSkillEffect) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: newRageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );

  HeroesFilterOptions withRageSkillChanceToDebuff(ESkillDebuff newRageSkillChanceToDebuff) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: rageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: newRageSkillChanceToDebuff,
      );

  HeroesFilterOptions withRageSkillStrongVsDebuff(ESkillDebuff newRageSkillStrongVsDebuff) => HeroesFilterOptions(
        heroClass: heroClass,
        heroType: heroType,
        rarity: rarity,
        enemyType: enemyType,
        baseSkillClass: baseSkillClass,
        baseSkillTarget: baseSkillTarget,
        baseSkillEffect: baseSkillEffect,
        baseSkillStrongVsDebuff: baseSkillStrongVsDebuff,
        baseSkillChanceToDebuff: baseSkillChanceToDebuff,
        rageSkillClass: rageSkillClass,
        rageSkillTarget: rageSkillTarget,
        rageSkillEffect: rageSkillEffect,
        rageSkillStrongVsDebuff: newRageSkillStrongVsDebuff,
        rageSkillChanceToDebuff: rageSkillChanceToDebuff,
      );
}
