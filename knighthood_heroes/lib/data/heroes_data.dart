import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/models/skill.dart';

List<KnighthoodHero> get getHeroes {
  return [
    KnighthoodHero(
      'Aeron',
      ERarity.rare,
      EHeroClass.hunter,
      EHeroType.dark,
      EEnemyType.cult,
      Skill(
        'Poison Arrow',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageEnemiesInFront,
          ESkillEffect.ignoresArmor,
        ],
      ),
      Skill(
        'Acid Barrage',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.acid,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
      ),
    ),
    KnighthoodHero(
      'Alder',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.logical,
      EEnemyType.militia,
      Skill(
        'ThunderClap',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.unfocus,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageFrontRow,
        ],
      ),
      Skill(
        'Hail of Thorns',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.acid,
        chanceTo: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
          ESkillEffect.ignoresArmor,
        ],
      ),
    ),
    KnighthoodHero(
      'Anaara',
      ERarity.rare,
      EHeroClass.alchemist,
      EHeroType.chaotic,
      EEnemyType.undead,
      Skill(
        'Healing Bubble',
        ESkillClass.heal,
        strongVsDebuff: ESkillDebuff.none,
        chanceTo: ESkillDebuff.protect,
        [
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
      ),
      Skill(
        'Sulphurous Solution',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.none,
        chanceTo: ESkillDebuff.burn,
        [
          ESkillEffect.damageAll,
        ],
      ),
    ),
    KnighthoodHero(
      'Ash',
      ERarity.common,
      EHeroClass.hunter,
      EHeroType.valiant,
      EEnemyType.beast,
      Skill(
        'Explosive Shot',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.weaken,
        [
          ESkillEffect.damagePlayerTarget,
        ],
      ),
      Skill(
        'Rain of Fire',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.none,
        chanceTo: ESkillDebuff.burn,
        [
          ESkillEffect.damageAll,
        ],
      ),
    ),
    KnighthoodHero(
      'Ayako',
      ERarity.legendary,
      EHeroClass.alchemist,
      EHeroType.holy,
      EEnemyType.demon,
      Skill(
        'Absorb Strength',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.dispel,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
          ESkillEffect.leechHealth,
          ESkillEffect.dispelBuffs,
        ],
      ),
      Skill(
        'Hatch',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.leechHealthAll,
        ],
      ),
    ),
    KnighthoodHero(
      'Azhar',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.holy,
      EEnemyType.outlaw,
      Skill(
        'Wish',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
          ESkillEffect.leechHealth,
          ESkillEffect.dispelDebuffs,
        ],
      ),
      Skill(
        'Scales of Fate',
        ESkillClass.healAndDamage,
        strongVsDebuff: ESkillDebuff.none,
        chanceTo: ESkillDebuff.focus,
        [
          ESkillEffect.leechHealthAll,
        ],
      ),
    ),
    KnighthoodHero(
      'Balberith',
      ERarity.rare,
      EHeroClass.alchemist,
      EHeroType.chaotic,
      EEnemyType.beast,
      Skill(
        'Lock \'n\' Load',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.burn,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
      ),
      Skill(
        'Friendly Fire!',
        ESkillClass.heal,
        chanceTo: ESkillDebuff.focus,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
      ),
    ),
    KnighthoodHero(
      'Balendu',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.lawful,
      EEnemyType.golem,
      Skill(
        'Starlight',
        ESkillClass.heal,
        chanceTo: ESkillDebuff.regenerate,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
      ),
      Skill(
        'Meteor',
        ESkillClass.damage,
        strongVsDebuff: ESkillDebuff.burn,
        chanceTo: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
        ],
      ),
    ),
    KnighthoodHero(
      'Bayani',
      ERarity.unique,
      EHeroClass.rogue,
      EHeroType.valiant,
      EEnemyType.golem,
      Skill(
        'Six Punch Bonanza',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
      ),
      Skill(
        'Highscream',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.dispel,
        strongVsDebuff: ESkillDebuff.none,
        [ESkillEffect.damageAll, ESkillEffect.dispelBuffs],
      ),
    ),
  ];
}
