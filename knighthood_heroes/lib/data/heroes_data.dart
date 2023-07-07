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
      'Rage Power deals 50% more damage vs Poison',
      Skill(
          'Poison Arrow',
          ESkillClass.damage,
          chanceTo: ESkillDebuff.poison,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.damageEnemiesInFront,
            ESkillEffect.ignoresArmor,
          ],
          description: 'Deals damage to enemies in front of you and ignores armor.'),
      Skill(
          'Acid Barrage',
          ESkillClass.damage,
          chanceTo: ESkillDebuff.acid,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.damageAll,
          ],
          description: 'Deals damage to all enemies.'),
    ),
    KnighthoodHero(
      'Alder',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.logical,
      EEnemyType.militia,
      'Chance to Stun with Base Power',
      Skill(
          'ThunderClap',
          ESkillClass.damage,
          chanceTo: ESkillDebuff.unfocus,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.damageFrontRow,
          ],
          description: 'Deals damage to enemies on the front row.'),
      Skill(
          'Hail of Thorns',
          ESkillClass.damage,
          strongVsDebuff: ESkillDebuff.acid,
          chanceTo: ESkillDebuff.none,
          [
            ESkillEffect.damageSpread,
            ESkillEffect.ignoresArmor,
          ],
          description: 'Distributes damage across all enemies, and ignores armor.'),
    ),
    KnighthoodHero(
      'Anaara',
      ERarity.rare,
      EHeroClass.alchemist,
      EHeroType.chaotic,
      EEnemyType.undead,
      'Rage Power deals 50% more damage vs Expose',
      Skill(
          'Healing Bubble',
          ESkillClass.heal,
          strongVsDebuff: ESkillDebuff.none,
          chanceTo: ESkillDebuff.protect,
          [
            ESkillEffect.restoreHealth,
            ESkillEffect.restoreArmor,
          ],
          description: 'Restores health or armor.'),
      Skill(
          'Sulphurous Solution',
          ESkillClass.damage,
          strongVsDebuff: ESkillDebuff.none,
          chanceTo: ESkillDebuff.burn,
          [
            ESkillEffect.damageAll,
          ],
          description: 'Deals damage to all enemies.'),
    ),
    KnighthoodHero(
      'Ash',
      ERarity.common,
      EHeroClass.hunter,
      EHeroType.valiant,
      EEnemyType.beast,
      'Chance to Unfocus with Base Power',
      Skill(
          'Explosive Shot',
          ESkillClass.damage,
          chanceTo: ESkillDebuff.none,
          strongVsDebuff: ESkillDebuff.weaken,
          [
            ESkillEffect.damagePlayerTarget,
          ],
          description: 'Deals damage to the current target.'),
      Skill(
          'Rain of Fire',
          ESkillClass.damage,
          strongVsDebuff: ESkillDebuff.none,
          chanceTo: ESkillDebuff.burn,
          [
            ESkillEffect.damageAll,
          ],
          description: 'Deals damage to all enemies.'),
    ),
    KnighthoodHero(
      'Ayako',
      ERarity.legendary,
      EHeroClass.alchemist,
      EHeroType.holy,
      EEnemyType.demon,
      'Chance to Weaken with Rage Power',
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
          description:
              'Deals damage to the current target and dispels all buffs. Restores health or armor by the same amount.'),
      Skill(
          'Hatch',
          ESkillClass.healAndDamage,
          chanceTo: ESkillDebuff.stun,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.leechHealthAll,
          ],
          description: 'Restores heath or armor.'),
    ),
    KnighthoodHero(
      'Azhar',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.holy,
      EEnemyType.outlaw,
      'Chance to give Protect with Base Power',
      Skill(
          'Wish',
          ESkillClass.healAndDamage,
          chanceTo: ESkillDebuff.none,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.restoreHealth,
            ESkillEffect.restoreArmor,
            ESkillEffect.dispelDebuffs,
          ],
          description: 'Restores health or armor and cures all negative status effects.'),
      Skill(
          'Scales of Fate',
          ESkillClass.healAndDamage,
          strongVsDebuff: ESkillDebuff.none,
          chanceTo: ESkillDebuff.focus,
          [
            ESkillEffect.damageSpread,
            ESkillEffect.leechHealthAll,
          ],
          description: 'Distributes damage across all enemies and restores health or armor by the same amount.'),
    ),
    KnighthoodHero(
      'Balberith',
      ERarity.rare,
      EHeroClass.alchemist,
      EHeroType.chaotic,
      EEnemyType.beast,
      '+50% critical chance vs Beast',
      Skill(
          'Lock \'n\' Load',
          ESkillClass.damage,
          chanceTo: ESkillDebuff.burn,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.damagePlayerTarget,
          ],
          description: 'Deals damage to the current target.'),
      Skill(
          'Friendly Fire!',
          ESkillClass.heal,
          chanceTo: ESkillDebuff.focus,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.restoreHealth,
            ESkillEffect.restoreArmor,
          ],
          description: 'Restores health or armor.'),
    ),
    KnighthoodHero(
      'Balendu',
      ERarity.unique,
      EHeroClass.mage,
      EHeroType.lawful,
      EEnemyType.golem,
      'Increase damage of Demon Minions by 20%',
      Skill(
          'Starlight',
          ESkillClass.heal,
          chanceTo: ESkillDebuff.regenerate,
          strongVsDebuff: ESkillDebuff.none,
          [
            ESkillEffect.restoreHealth,
            ESkillEffect.restoreArmor,
          ],
          description: 'Restores health or armor.'),
      Skill(
          'Meteor',
          ESkillClass.damage,
          strongVsDebuff: ESkillDebuff.burn,
          chanceTo: ESkillDebuff.none,
          [
            ESkillEffect.damageSpread,
          ],
          description: 'Distributes damage across all enemies.'),
    ),
    KnighthoodHero(
      'Bayani',
      ERarity.unique,
      EHeroClass.rogue,
      EHeroType.valiant,
      EEnemyType.golem,
      'Chance to Freeze with Base Power',
      Skill(
        'Six Punch Bonanza',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Highscream',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.dispel,
        strongVsDebuff: ESkillDebuff.none,
        [ESkillEffect.damageAll, ESkillEffect.dispelBuffs],
        description: 'Deals damage to all enemies and dispels all buffs.',
      ),
    ),
    KnighthoodHero(
      'Blaine',
      ERarity.rare,
      EHeroClass.warrior,
      EHeroType.maniacal,
      EEnemyType.goblin,
      'Increase damage of Troll Minions by 20%',
      Skill(
        'Thud!',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Smash!',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.expose,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Brutus',
      ERarity.legendary,
      EHeroClass.alchemist,
      EHeroType.champion,
      EEnemyType.goblin,
      'Chance to Protect with Base Power',
      Skill(
        'Rage Serum',
        ESkillClass.heal,
        chanceTo: ESkillDebuff.regenerate,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.restoreHealth,
          ESkillEffect.fillsRage,
        ],
        description: 'Restores health and fills Rage by 50%.',
      ),
      Skill(
        'Bombard',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
          ESkillEffect.harmsPlayer,
        ],
        description: 'Deals damage to all enemies and damages the player by 20% of the damage dealt.',
      ),
    ),
    KnighthoodHero(
      'Byrne',
      ERarity.epic,
      EHeroClass.rogue,
      EHeroType.logical,
      EEnemyType.goblin,
      'Base Power deals 50% more damage vs Weaken',
      Skill(
          'Venom Blade',
          ESkillClass.damage,
          chanceTo: ESkillDebuff.poison,
          strongVsDebuff: ESkillDebuff.none,
          [ESkillEffect.damagePlayerTarget, ESkillEffect.ignoresArmor],
          description: 'Deals damage to the current target and ignores armor. '),
      Skill(
          'Plague Harvest',
          ESkillClass.damage,
          chanceTo: ESkillDebuff.none,
          strongVsDebuff: ESkillDebuff.poison,
          [
            ESkillEffect.damageAll,
            ESkillEffect.ignoresArmor,
          ],
          description: 'Deals damage to all enemies and ignores armor.'),
    ),
    KnighthoodHero(
      'Caliban',
      ERarity.unique,
      EHeroClass.hunter,
      EHeroType.dark,
      EEnemyType.militia,
      'Rage Power deals +50% damage vs Acid',
      Skill(
        'Scythe Sweep',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.weaken,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageBackRow,
        ],
        description: 'Deals damage to enemies in the back row.',
      ),
      Skill(
        'Danse Macabre',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.armor,
        [
          ESkillEffect.leechHealthAll,
        ],
        description: 'Deals damage to all enemies.Restores your HP or armor by the same amount. ',
      ),
    ),
    KnighthoodHero(
      'Carmilla',
      ERarity.legendary,
      EHeroClass.alchemist,
      EHeroType.logical,
      EEnemyType.beast,
      '+50% critical chance vs Beast',
      Skill(
        'Enervating Haze',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.unfocus,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageFrontRow,
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
        description: 'Deals damage to enemies on the front row. Restores your health or armor.',
      ),
      Skill(
        'Vampire\'s Bite',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.burn,
        [
          ESkillEffect.damageAll,
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
        description: 'Deals damage to all enemies. Restores your health or armor.',
      ),
    ),
    KnighthoodHero(
      'Cladis',
      ERarity.rare,
      EHeroClass.mage,
      EHeroType.dark,
      EEnemyType.outlaw,
      '+50% critical chance vs Outlaw',
      Skill(
        'Dark Bolts',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageOneBack,
          ESkillEffect.dispelBuffs,
        ],
        description: 'Deals damage to one enemy on the back row and dispels all positive Status Effects.',
      ),
      Skill(
        'Swarm of Flies',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.weaken,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
        ],
        description: 'Distributes damage to enemies.',
      ),
    ),
    KnighthoodHero(
      'Delphinia',
      ERarity.epic,
      EHeroClass.hunter,
      EHeroType.valiant,
      EEnemyType.undead,
      '+50% critical chance vs Undead',
      Skill(
        'Stake Shot',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.weaken,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Banish',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
          ESkillEffect.delayPowers,
        ],
        description: 'Distributes damage across all enemies and delays enemy powers.',
      ),
    ),
    KnighthoodHero(
      'Doctor Flox',
      ERarity.unique,
      EHeroClass.alchemist,
      EHeroType.maniacal,
      EEnemyType.golem,
      'Chance to Acid with Rage Power',
      Skill(
        'Burn, Burn, Burn!',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.burn,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageBackRow,
        ],
        description: 'Deals damage to enemies in the back row.',
      ),
      Skill(
        'Big Bang',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
          ESkillEffect.harmsPlayer,
        ],
        description: 'Deals damage to all enemies. You take 33% of the total damage.',
      ),
    ),
    KnighthoodHero(
      'Don Diego',
      ERarity.epic,
      EHeroClass.rogue,
      EHeroType.rebel,
      EEnemyType.outlaw,
      '+50% critical chance vs Outlaw',
      Skill(
        'Hack \'n\' Slash',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
          ESkillEffect.dispelBuffs,
        ],
        description: 'Deals damage to your current target, and dispels all buffs from the target.',
      ),
      Skill(
        'Molten Blade',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.burn,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Dvalin',
      ERarity.epic,
      EHeroClass.warrior,
      EHeroType.logical,
      EEnemyType.demon,
      '+50% critical chance vs Demon',
      Skill(
        'Piercer',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
          ESkillEffect.ignoresArmor,
        ],
        description: 'Deals damage to your current target and ignores armor.',
      ),
      Skill(
        'Heart Strike',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.leechHealthAll,
        ],
        description: 'Deals damage to all enemies. Restores your health or armor by the same amount. ',
      ),
    ),
    KnighthoodHero(
      'Eileen',
      ERarity.legendary,
      EHeroClass.rogue,
      EHeroType.maverick,
      EEnemyType.troll,
      'Chance to Acid with Base Power',
      Skill(
        'Sledgehammer',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.expose,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to your current target.',
      ),
      Skill(
        'Drill Bit',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Ericson',
      ERarity.legendary,
      EHeroClass.warrior,
      EHeroType.valiant,
      EEnemyType.goblin,
      'Chance to Weaken with Base Power',
      Skill(
        'Heavy Swipe',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.armor,
        [
          ESkillEffect.damageFrontRow,
        ],
        description: 'Deals damage to enemies in the front row.',
      ),
      Skill(
        'Frost Blade',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.freeze,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Erinn',
      ERarity.unique,
      EHeroClass.warrior,
      EHeroType.maverick,
      EEnemyType.outlaw,
      '+30% critical damage on Chain Start attacks',
      Skill(
        'Smite',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.weaken,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to your current target.',
      ),
      Skill(
        'Shockwave',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
        ],
        description: 'Distributes damage across all enemies.',
      ),
    ),
    KnighthoodHero(
      'Fahari',
      ERarity.rare,
      EHeroClass.rogue,
      EHeroType.maverick,
      EEnemyType.cult,
      'Chance to Regenerate with Rage Power',
      Skill(
        'Ransack',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.fury,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to your current target. ',
      ),
      Skill(
        'Soul Thief',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.acid,
        [
          ESkillEffect.leechHealthAll,
        ],
        description: 'Deals damage to all enemies, and restores your health or armor by the same amount. ',
      ),
    ),
    KnighthoodHero(
      'Garron',
      ERarity.legendary,
      EHeroClass.warrior,
      EHeroType.lawful,
      EEnemyType.cult,
      '+50% critical chance vs Cult',
      Skill(
        'Pure Impact',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.delay,
        strongVsDebuff: ESkillDebuff.none,
        [ESkillEffect.damagePlayerTarget, ESkillEffect.delayPowers],
        description: 'Deals damage and delays power of your current target. ',
      ),
      Skill(
        'Searing Font',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.delay,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
        ],
        description: 'Distributes damage across all enemies. ',
      ),
    ),
    KnighthoodHero(
      'Geber',
      ERarity.unique,
      EHeroClass.alchemist,
      EHeroType.rebel,
      EEnemyType.cult,
      'Increases damage of Golem Minions by 20%',
      Skill(
        'Blood Distill',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.regenerate,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy on the back row. ',
      ),
      Skill(
        'Volatile Mix',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.acid,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies. ',
      ),
    ),
    KnighthoodHero(
      'Grax',
      ERarity.epic,
      EHeroClass.hunter,
      EHeroType.maniacal,
      EEnemyType.outlaw,
      'Increases damage of Goblin Minions by 20%',
      Skill(
        'Piercing Bolt',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.expose,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy in the back row. ',
      ),
      Skill(
        'Bonestorm',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
        ],
        description: 'Distributes damage across all enemies. ',
      ),
    ),
    KnighthoodHero(
      'Grimm',
      ERarity.epic,
      EHeroClass.alchemist,
      EHeroType.dark,
      EEnemyType.goblin,
      'Chance to Weaken with Rage Power',
      Skill(
        'Ice Needles',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.freeze,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target. ',
      ),
      Skill(
        'Sap Life',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.leechHealthAll,
        ],
        description: 'Deals damage to all enemies. Restores your health or armor by the same amount.',
      ),
    ),
    KnighthoodHero(
      'Griz',
      ERarity.legendary,
      EHeroClass.hunter,
      EHeroType.lawful,
      EEnemyType.undead,
      'Increases damage of Beast minions by 20%',
      Skill(
        'Deadeye',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.burn,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy on the back row.',
      ),
      Skill(
        'Crossfire',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.expose,
        [ESkillEffect.damageAll, ESkillEffect.ignoresArmor],
        description: 'Deals damage to all enemies and ignores armor.',
      ),
    ),
  ];
}
