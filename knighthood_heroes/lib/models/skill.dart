import 'package:knighthood_heroes/data/enums.dart';

class Skill {
  Skill(this.name, this.skillClass, this.strongVsDebuff, this.skillEffects, this.skillEffect);

  final String name;
  final ESkillClass skillClass;
  final ESkillDebuff strongVsDebuff;
  final List<ESkillEffect> skillEffects;
  final ESkillDebuff skillEffect;
}
