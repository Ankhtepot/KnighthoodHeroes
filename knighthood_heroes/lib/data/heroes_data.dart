import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/skill.dart';

List<KnighthoodHero> get getHeroes {
  return [
    KnighthoodHero(
      'Aeron',
      'assets/images/Aeron.jpg',
      ERarity.rare,
      EHeroClass.hunter,
      EHeroType.dark,
      EEnemyType.cult,
      Skill(
        'Poison Arrow',
        ESkillClass.damage,
        ESkillDebuff.none,
        [
          ESkillEffect.damageEnemiesInFront,
          ESkillEffect.ignoresArmor,
        ],
        ESkillDebuff.poison,
      ),
      Skill(
        'Acid Barrage',
        ESkillClass.damage,
        ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        ESkillDebuff.acid,
      ),
    ),
    KnighthoodHero(
      'Alder',
      'assets/images/Alder.jpg',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.logical,
      EEnemyType.militia,
      Skill(
        'ThunderClap',
        ESkillClass.damage,
        ESkillDebuff.none,
        [
          ESkillEffect.damageFrontRow,
          ESkillEffect.ignoresArmor,
        ],
        ESkillDebuff.unfocus,
      ),
      Skill(
        'Hail of Thorns',
        ESkillClass.damage,
        ESkillDebuff.acid,
        [
          ESkillEffect.damageSpread,
          ESkillEffect.ignoresArmor,
        ],
        ESkillDebuff.acid,
      ),
    ),
    KnighthoodHero(
      'Anaara',
      'assets/images/Anaara.jpg',
      ERarity.rare,
      EHeroClass.alchemist,
      EHeroType.chaotic,
      EEnemyType.undead,
      Skill(
        'Healing Bubble',
        ESkillClass.heal,
        ESkillDebuff.none,
        [ESkillEffect.restoreHealth, ESkillEffect.restoreArmor],
        ESkillDebuff.protect,
      ),
      Skill(
        'Sulphurous Solution',
        ESkillClass.damage,
        ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        ESkillDebuff.burn,
      ),
    ),
  ];
}
