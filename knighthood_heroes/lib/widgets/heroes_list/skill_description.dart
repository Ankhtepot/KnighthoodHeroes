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

  List<Widget> get getEffectsIcons {
    List<Widget> effectsIcons = [];

    if (skill.skillEffects.isNotEmpty) {
      effectsIcons.add(
        const Icon(Icons.arrow_forward, size: 20),
      );
    }

    for (var effect in skill.skillEffects) {
      effectsIcons.add(
        Image(
          image: AssetImage(Skill.getSkillEffectImagePath(effect)),
          width: 20,
          height: 20,
        ),
      );
    }

    effectsIcons.add(
      const Text(' |', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );

    return effectsIcons;
  }

  List<Widget> get getDebuffDescription {
    if (skill.chanceTo == ESkillDebuff.none) {
      return [];
    } else {
      return [
        Image(
          image: AssetImage(chanceIconPath),
          width: 20,
          height: 20,
        ),
        const Icon(Icons.arrow_forward, size: 20),
        Skill.getDebuffBadge(skill.chanceTo),
      ];
    }
  }

  List<Widget> get getStrongVsDescription {
    if (skill.strongVsDebuff == ESkillDebuff.none) {
      return [];
    } else {
      return [
        const SizedBox(width: 5),
        Image(
          image: AssetImage(strongVsIconPath),
          width: 20,
          height: 20,
        ),
        const Icon(Icons.arrow_forward, size: 20),
        Skill.getDebuffBadge(skill.strongVsDebuff),
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
        ...getEffectsIcons,
        const SizedBox(width: 5),
        ...getDebuffDescription,
        ...getStrongVsDescription,
      ],
    );
  }
}
