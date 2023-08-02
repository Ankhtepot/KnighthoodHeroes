import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/models/skill.dart';

class SkillDetailed extends StatelessWidget {
  const SkillDetailed(this.skill, this.isBaseSkill, {super.key, this.backgroundColor = Colors.white});

  final Skill skill;
  final bool isBaseSkill;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    List<Widget> getEffectsIcons() {
      List<Widget> effectsIcons = [];

      if (skill.skillEffects.isEmpty) {
        return effectsIcons;
      }

      for (var effect in skill.skillEffects) {
        effectsIcons.add(
          Row(
            children: [
              Image(
                image: AssetImage(Skill.getSkillEffectImagePath(effect)),
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 5),
              Text(
                effect.name.textFromEnumName(),
                style: commonTextStyle(fontSize: 16, color: cardTextColor),
              ),
            ],
          ),
        );
      }

      return effectsIcons;
    }

    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextRoundedWithBackground(
              isBaseSkill ? 'Base Skill' : 'Rage Skill',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              backgroundColor: isBaseSkill ? Colors.grey : const Color.fromARGB(255, 255, 202, 133),
              textColor: isBaseSkill ? Colors.black : Colors.red,
            ),
            Text(
              skill.name,
              style: commonTextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: cardTextColor),
            ),
            const SizedBox(height: 5),
            Text(
              skill.description,
              style: commonTextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: cardTextColor),
            ),
            const SizedBox(height: 5),
            ...getEffectsIcons(),
            Row(
              children: [
                Text(
                  'Chance to apply:',
                  style: commonTextStyle(color: cardTextColor),
                ),
                const SizedBox(width: 5),
                Skill.getDebuffBadge(skill.chanceTo, bothIfAvailable: true),
              ],
            ),
            Row(
              children: [
                Text('Strong against:', style: commonTextStyle(color: cardTextColor)),
                const SizedBox(width: 5),
                Skill.getDebuffBadge(skill.strongVsDebuff, bothIfAvailable: true),
              ],
            )
          ],
        ),
      ),
    );
  }
}
