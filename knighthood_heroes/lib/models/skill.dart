import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/text_colors.dart';

String skillImagesBasePath = 'assets/images/skills/';

class Skill {
  Skill(
    this.name,
    this.skillClass,
    this.skillEffects, {
    this.strongVsDebuff = ESkillDebuff.none,
    this.chanceTo = ESkillDebuff.none,
  });

  final String name;
  final ESkillClass skillClass;
  final ESkillDebuff strongVsDebuff;
  final List<ESkillEffect> skillEffects;
  final ESkillDebuff chanceTo;

  String get getSkillImagePath => getSkillClassImagePath(skillClass);

  static String getSkillEffectImagePath(ESkillEffect effect) => '$skillImagesBasePath${effect.name}.png';

  static List<ESkillEffect> get getSkillTargets => [
        ESkillEffect.none,
        ESkillEffect.leechHealth,
        ESkillEffect.leechHealthAll,
        ESkillEffect.damagePlayerTarget,
        ESkillEffect.damageBackRow,
        ESkillEffect.damageFrontRow,
        ESkillEffect.damageEnemiesInFront,
        ESkillEffect.damageRandom,
        ESkillEffect.damageAll,
        ESkillEffect.damageSpread,
      ];

  static List<ESkillEffect> get getSkillDebuffs => [
        ESkillEffect.none,
        ESkillEffect.restoreHealth,
        ESkillEffect.restoreArmor,
        ESkillEffect.dispelBuffs,
        ESkillEffect.dispelDebuffs,
        ESkillEffect.ignoresArmor,
        ESkillEffect.leechHealth,
        ESkillEffect.leechHealthAll,
      ];

  static String getSkillEffectDisplayText(ESkillEffect effect) => switch (effect) {
        ESkillEffect.none => 'No effect selected',
        ESkillEffect.restoreHealth => 'Restore Health',
        ESkillEffect.restoreArmor => 'Restore Armor',
        ESkillEffect.dispelBuffs => 'Dispel Buffs on the Enemy',
        ESkillEffect.dispelDebuffs => 'Dispel Debuffs on the Player',
        ESkillEffect.ignoresArmor => 'Ignores Armor',
        ESkillEffect.fillsRage => 'Fills Rage',
        ESkillEffect.harmsPlayer => 'Harms Player',
        ESkillEffect.leechHealth => 'Leech Health',
        ESkillEffect.leechHealthAll => 'Leech Health from all Enemies',
        ESkillEffect.damagePlayerTarget => 'Damages Player Target',
        ESkillEffect.damageBackRow => 'Damages Back Row',
        ESkillEffect.damageFrontRow => 'Damages Front Row',
        ESkillEffect.damageEnemiesInFront => 'Enemies In Front of the Player',
        ESkillEffect.damageRandom => 'Damages Random Enemy',
        ESkillEffect.damageAll => 'Damages All Enemies',
        ESkillEffect.damageSpread => 'Damage is Spread to All Enemies',
      };

  static String getSkillClassImagePath(ESkillClass skillClass) => switch (skillClass) {
        ESkillClass.none => 'assets/images/skills/none.png',
        ESkillClass.damage => 'assets/images/skills/damage.png',
        ESkillClass.heal => 'assets/images/skills/restoreHealth.png',
        ESkillClass.healAndDamage => 'assets/images/skills/damageHeal.png',
      };

  static TextColors getDebuffColors(ESkillDebuff debuff) => switch (debuff) {
        ESkillDebuff.none => TextColors(Colors.white, Colors.black),
        ESkillDebuff.poison =>
          TextColors(const Color.fromARGB(255, 123, 255, 128), const Color.fromARGB(255, 0, 50, 17)),
        ESkillDebuff.acid => TextColors(Colors.green, const Color.fromARGB(255, 255, 255, 255)),
        ESkillDebuff.unfocus =>
          TextColors(const Color.fromARGB(255, 255, 252, 224), const Color.fromARGB(255, 134, 134, 134)),
        ESkillDebuff.protect =>
          TextColors(const Color.fromARGB(255, 91, 91, 91), const Color.fromARGB(255, 0, 247, 255)),
        ESkillDebuff.burn => TextColors(Colors.red, Colors.black),
        ESkillDebuff.weaken => TextColors(const Color.fromARGB(255, 133, 133, 133), Colors.black),
        ESkillDebuff.stun => TextColors(Colors.orange, Colors.white),
        ESkillDebuff.dispel => TextColors(const Color.fromARGB(255, 128, 128, 128), Colors.black),
        ESkillDebuff.regenerate =>
          TextColors(const Color.fromARGB(255, 125, 214, 255), const Color.fromARGB(255, 2, 134, 6)),
        ESkillDebuff.expose => TextColors(Colors.grey, Colors.black),
        ESkillDebuff.freeze => TextColors(Colors.lightBlue, const Color.fromARGB(255, 0, 17, 255)),
        ESkillDebuff.delay => TextColors(const Color.fromARGB(255, 138, 138, 138), Colors.black),
        ESkillDebuff.armor => TextColors(Colors.blue, Colors.black),
        ESkillDebuff.focus => TextColors(const Color.fromARGB(255, 255, 234, 44), Colors.lightBlue),
      };
}
