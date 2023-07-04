import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/text_colors.dart';

class Skill {
  Skill(this.name, this.skillClass, this.strongVsDebuff, this.skillEffects, this.skillDebuff);

  final String name;
  final ESkillClass skillClass;
  final ESkillDebuff strongVsDebuff;
  final List<ESkillEffect> skillEffects;
  final ESkillDebuff skillDebuff;

  String get getSkillImagePath => switch (skillClass) {
        ESkillClass.damage => 'assets/images/skills/damage.png',
        ESkillClass.heal => 'assets/images/skills/heal.png',
        ESkillClass.healAndDamage => 'assets/images/skills/damageHeal.png',
      };

  TextColors get getDebuffColors => switch (skillDebuff) {
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
        ESkillDebuff.regenerate => TextColors(Colors.green, Colors.blue),
        ESkillDebuff.expose => TextColors(Colors.grey, Colors.black),
        ESkillDebuff.freeze => TextColors(Colors.lightBlue, const Color.fromARGB(255, 0, 17, 255)),
        ESkillDebuff.delay => TextColors(const Color.fromARGB(255, 138, 138, 138), Colors.black),
        ESkillDebuff.armor => TextColors(Colors.blue, Colors.black),
      };
}
