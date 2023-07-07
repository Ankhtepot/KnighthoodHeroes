import 'package:flutter/material.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/skill.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

class SkillDetailed extends StatelessWidget {
  const SkillDetailed(this.skill, this.isBaseSkill, {super.key});

  final Skill skill;
  final bool isBaseSkill;

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
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      }

      return effectsIcons;
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
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
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              skill.description,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 5),
            ...getEffectsIcons(),
            Row(
              children: [
                const Text('Chance to apply:'),
                const SizedBox(width: 5),
                Skill.getDebuffBadge(skill.chanceTo, bothIfAvailable: true),
              ],
            ),
            Row(
              children: [
                const Text('Strong against:'),
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
