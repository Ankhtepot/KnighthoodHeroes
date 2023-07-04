import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/skill.dart';
import 'package:knighthood_heroes/models/text_colors.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

String chanceIconPath = 'assets/images/skills/chance.png';
String strongVsIconPath = 'assets/images/skills/strongVs.png';

class SkillDescription extends StatelessWidget {
  const SkillDescription(this.skill, this.isBase, {super.key});
  final Skill skill;
  final bool isBase;

  List<Widget> get getDebuffDescription {
    if (skill.skillDebuff == ESkillDebuff.none) {
      return [];
    } else {
      TextColors colors = skill.getDebuffColors(skill.skillDebuff);
      return [
        Image(
          image: AssetImage(chanceIconPath),
          width: 20,
          height: 20,
        ),
        const Icon(Icons.arrow_forward, size: 20),
        TextRoundedWithBackground(
          skill.skillDebuff.name.capitalize(),
          backgroundColor: colors.backgroundColor,
          textColor: colors.textColor,
        ),
      ];
    }
  }

  List<Widget> get getStrongVsDescription {
    if (skill.strongVsDebuff == ESkillDebuff.none) {
      return [];
    } else {
      TextColors colors = skill.getDebuffColors(skill.strongVsDebuff);
      return [
        const SizedBox(width: 5),
        Image(
          image: AssetImage(strongVsIconPath),
          width: 20,
          height: 20,
        ),
        const Icon(Icons.arrow_forward, size: 20),
        TextRoundedWithBackground(
          skill.strongVsDebuff.name.capitalize(),
          backgroundColor: colors.backgroundColor,
          textColor: colors.textColor,
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    String title = isBase ? 'Base: ' : 'Rage: ';

    return Row(
      children: [
        Text(title),
        Image(
          image: AssetImage(skill.getSkillImagePath),
          width: 20,
          height: 20,
        ),
        const SizedBox(width: 5),
        ...getDebuffDescription,
        ...getStrongVsDescription,
      ],
    );
  }
}
