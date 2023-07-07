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
        description: 'Deals damage to all enemies.Restores your HP or armor by the same amount.',
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
        description: 'Deals damage to all enemies. Restores your health or armor by the same amount.',
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
        description: 'Deals damage to your current target.',
      ),
      Skill(
        'Soul Thief',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.acid,
        [
          ESkillEffect.leechHealthAll,
        ],
        description: 'Deals damage to all enemies, and restores your health or armor by the same amount.',
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
        description: 'Deals damage and delays power of your current target.',
      ),
      Skill(
        'Searing Font',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.delay,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
        ],
        description: 'Distributes damage across all enemies.',
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
        description: 'Deals damage to one enemy on the back row.',
      ),
      Skill(
        'Volatile Mix',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.acid,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
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
        description: 'Deals damage to one enemy in the back row.',
      ),
      Skill(
        'Bonestorm',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
        ],
        description: 'Distributes damage across all enemies.',
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
        description: 'Deals damage to the current target.',
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
    KnighthoodHero(
      'Gunn',
      ERarity.legendary,
      EHeroClass.rogue,
      EHeroType.chaotic,
      EEnemyType.militia,
      'Increases Acid damage by 100%',
      Skill(
        'Acid Blade',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.acid,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Whirwind',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.weaken,
        [ESkillEffect.damageAll, ESkillEffect.harmsPlayer],
        description: 'Deals damage to all enemies. You take 33% of the total damage.',
      ),
    ),
    KnighthoodHero(
      'Gwen',
      ERarity.rare,
      EHeroClass.warrior,
      EHeroType.lawful,
      EEnemyType.militia,
      'Chance to Weaken with Rage Power',
      Skill(
        'Decimate',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to your current target.',
      ),
      Skill(
        'Phalanx',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.poison,
        [
          ESkillEffect.damageSpread,
        ],
        description: 'Distributes damage across all enemies.',
      ),
    ),
    KnighthoodHero(
      'Helmar',
      ERarity.common,
      EHeroClass.warrior,
      EHeroType.champion,
      EEnemyType.outlaw,
      'Chance to Stun with Base Power',
      Skill(
        'Smash',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.armor,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Hammer Shock',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.weaken,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Herne',
      ERarity.legendary,
      EHeroClass.mage,
      EHeroType.rebel,
      EEnemyType.demon,
      'Chance to Expose with Rage Power',
      Skill(
        'Curse',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.weaken,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy on the back row.',
      ),
      Skill(
        'Dark Portal',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [ESkillEffect.damageAll, ESkillEffect.ignoresArmor],
        description: 'Deals damage to all enemies, and ignores armor.',
      ),
    ),
    KnighthoodHero(
      'Isstara',
      ERarity.unique,
      EHeroClass.hunter,
      EHeroType.champion,
      EEnemyType.undead,
      '+50% critical chance of Hunter Heroes',
      Skill(
        'Shatering Shot',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.freeze,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Rain of Ice',
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
      'Kamil',
      ERarity.legendary,
      EHeroClass.rogue,
      EHeroType.valiant,
      EEnemyType.outlaw,
      '+50% critical damage vs Outlaw',
      Skill(
        'Under Pressure',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [ESkillEffect.damagePlayerTarget, ESkillEffect.dispelBuffs],
        description: 'Deals damage to the current target and dispels all buffs from the target.',
      ),
      Skill(
        'Fusillade',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Keera',
      ERarity.legendary,
      EHeroClass.rogue,
      EHeroType.dark,
      EEnemyType.beast,
      'Increases critical chance of Rogue Heroes by 30%',
      Skill(
        'Dagger Barrage',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.burn,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Raven Curse',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageRandom,
        ],
        description: 'Attack 6 times, dealing damage. Hits random enemies.',
      ),
    ),
    KnighthoodHero(
      'Krusa',
      ERarity.rare,
      EHeroClass.hunter,
      EHeroType.maverick,
      EEnemyType.outlaw,
      'Chance to Expose with Rage Power',
      Skill(
        'Chain Bolt',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy on the back row.',
      ),
      Skill(
        'Detonator Bolt',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.armor,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Lanasa',
      ERarity.legendary,
      EHeroClass.hunter,
      EHeroType.logical,
      EEnemyType.troll,
      'Chance to Weaken with Rage Power',
      Skill(
        'Scatter Shot',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.expose,
        [
          ESkillEffect.damageBackRow,
        ],
        description: 'Deals damage to enemies on the back row.',
      ),
      Skill(
        'Porcupine Quills',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.acid,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Lance',
      ERarity.unique,
      EHeroClass.warrior,
      EHeroType.holy,
      EEnemyType.demon,
      'Chance to Regenerate with Rage Power',
      Skill(
        'Sunlit Spear',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.poison,
        [ESkillEffect.damagePlayerTarget, ESkillEffect.ignoresArmor],
        description: 'Deals damage to your current target and ignores armor.',
      ),
      Skill(
        'Holy Aegis',
        ESkillClass.heal,
        chanceTo: ESkillDebuff.protect,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
        description: 'Restores health or armor.',
      ),
    ),
    KnighthoodHero(
      'Lars',
      ERarity.epic,
      EHeroClass.warrior,
      EHeroType.chaotic,
      EEnemyType.golem,
      'Chance to Expose with Base Power',
      Skill(
        'Wide Swing',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.acid,
        [
          ESkillEffect.damageFrontRow,
        ],
        description: 'Deals damage to enemies in the front row.',
      ),
      Skill(
        'Battle Charge',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.freeze,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Logan',
      ERarity.legendary,
      EHeroClass.warrior,
      EHeroType.dark,
      EEnemyType.beast,
      'Base Power deals 50% more damage vs Expose',
      Skill(
        'Night Claw',
        ESkillClass.healAndDamage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.leechHealth,
        ],
        description: 'Deals damage to your current target. Restores your health or armor by the same amount.',
      ),
      Skill(
        'Full Moon',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.weaken,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Lukin',
      ERarity.legendary,
      EHeroClass.hunter,
      EHeroType.rebel,
      EEnemyType.goblin,
      'Increases critical chance of Lukin\'s Powers by 30%',
      Skill(
        'Boom Shot',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals damage to the current target.',
      ),
      Skill(
        'Toxic Horns',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Macleod',
      ERarity.unique,
      EHeroClass.hunter,
      EHeroType.chaotic,
      EEnemyType.goblin,
      '+50% critical chance vs Goblin',
      Skill(
        'Axe Hurl',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy on the back row.',
      ),
      Skill(
        'Foe Cleaver',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.delay,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Mikazuki',
      ERarity.unique,
      EHeroClass.hunter,
      EHeroType.logical,
      EEnemyType.demon,
      'Chance to Expose with Base Power',
      Skill(
        'Poisoned Claw',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [ESkillEffect.damagePlayerTarget, ESkillEffect.ignoresArmor],
        description: 'Deals damage to the current target and ignores armor.',
      ),
      Skill(
        'Nine Tails',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
          ESkillEffect.ignoresArmor,
          ESkillEffect.dispelBuffs,
        ],
        description: 'Damages all enemies and ignores armor. Dispels all buffs.',
      ),
    ),
    KnighthoodHero(
      'Millicent',
      ERarity.legendary,
      EHeroClass.alchemist,
      EHeroType.maverick,
      EEnemyType.outlaw,
      'Increases Poison damage by 100%',
      Skill(
        'Knockout Gas',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.stun,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damagePlayerTarget,
        ],
        description: 'Deals armor-penetrating damage to the current target.',
      ),
      Skill(
        'Toxic Spray',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.poison,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
        ],
        description: 'Deals armor-penetrating damage to all enemies.',
      ),
    ),
    KnighthoodHero(
      'Neko',
      ERarity.rare,
      EHeroClass.hunter,
      EHeroType.maniacal,
      EEnemyType.goblin,
      '+50% critical chance vs Goblin',
      Skill(
        'Claws Out',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.burn,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy on the back row.',
      ),
      Skill(
        'Cat\'s Cradle',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.expose,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
          ESkillEffect.harmsPlayer,
        ],
        description: 'Distributes damage across all enemies. You take 20% of the total damage.',
      ),
    ),
    KnighthoodHero(
      'Nijuro',
      ERarity.epic,
      EHeroClass.warrior,
      EHeroType.logical,
      EEnemyType.cult,
      '+30% critical chance for Warrior Powers',
      Skill(
        'Awaken Blade',
        ESkillClass.heal,
        chanceTo: ESkillDebuff.focus,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.restoreHealth,
          ESkillEffect.restoreArmor,
        ],
        description: 'Restores health or armor.',
      ),
      Skill(
        'Swallow Tail',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.none,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageAll,
          ESkillEffect.dispelBuffs,
        ],
        description: 'Deals damage to all enemies. Dispels all buffs from the targets.',
      ),
    ),
    KnighthoodHero(
      'Olaf',
      ERarity.epic,
      EHeroClass.alchemist,
      EHeroType.maverick,
      EEnemyType.golem,
      '+50% critical chance vs Golem',
      Skill(
        'Lightning Flask',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.acid,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageOneBack,
        ],
        description: 'Deals damage to one enemy in the back row.',
      ),
      Skill(
        'Bottled Blizzard',
        ESkillClass.damage,
        chanceTo: ESkillDebuff.freeze,
        strongVsDebuff: ESkillDebuff.none,
        [
          ESkillEffect.damageSpread,
          ESkillEffect.ignoresArmor,
        ],
        description: 'Distributes damage across all enemies and ignores armor.',
      ),
    ),
  ];
}
