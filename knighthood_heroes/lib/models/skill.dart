import 'package:knighthood_heroes/data/enums.dart';

class Skill {
  Skill(this.name, this.skillClass, this.strongVsDebuff, this.skillEffects, this.skillEffect);

  final String name;
  final ESkillClass skillClass;
  final ESkillDebuff strongVsDebuff;
  final List<ESkillEffect> skillEffects;
  final ESkillDebuff skillEffect;

  String get getSkillImagePath => switch (skillClass) {
        ESkillClass.damage => 'assets/images/damage.png',
        ESkillClass.heal => 'assets/images/heal.png',
        ESkillClass.healAndDamage => 'assets/images/damageHeal.png',
      };
}
