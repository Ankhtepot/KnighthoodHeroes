import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/skill.dart';

List<KnighthoodHero> get getHeroes {
  return [
    KnighthoodHero(
      'Aeron',
      'assets/images/heroes/Aeron.jpg',
      ERarity.rare,
      EHeroClass.hunter,
      EHeroType.dark,
      EEnemyType.cult,
      Skill(
        'Poison Arrow',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.none,
        skillDebuff: ESkillDebuff.poison,
        [
          ESkillEffect.damageEnemiesInFront,
          ESkillEffect.ignoresArmor,
        ],
      ),
      Skill(
        'Acid Barrage',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.none,
        skillDebuff: ESkillDebuff.acid,
        [
          ESkillEffect.damageAll,
        ],
      ),
    ),
    KnighthoodHero(
      'Alder',
      'assets/images/heroes/Alder.jpg',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.logical,
      EEnemyType.militia,
      Skill(
        'ThunderClap',
        ESkillClass.damage,
        skillDebuff: ESkillDebuff.unfocus,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageFrontRow,
          ESkillEffect.ignoresArmor,
        ],
      ),
      Skill(
        'Hail of Thorns',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.acid,
        skillDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
          ESkillEffect.ignoresArmor,
        ],
      ),
    ),
    KnighthoodHero(
      'Anaara',
      'assets/images/heroes/Anaara.jpg',
      ERarity.rare,
      EHeroClass.alchemist,
      EHeroType.chaotic,
      EEnemyType.undead,
      Skill(
        'Healing Bubble',
        ESkillClass.heal,
        strongVsDebuff: ESkillDebuff.none,
        skillDebuff: ESkillDebuff.protect,
        [
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
      ),
      Skill(
        'Sulphurous Solution',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.none,
        skillDebuff: ESkillDebuff.burn,
        [
          ESkillEffect.damageAll,
        ],
      ),
    ),
  ];
}
