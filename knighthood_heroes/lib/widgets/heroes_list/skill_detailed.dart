import 'package:flutter/material.dart';
import 'package:knighthood_heroes/models/skill.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

class SkillDetailed extends StatelessWidget {
  const SkillDetailed(this.skill, this.isBaseSkill, {super.key});

  final Skill skill;
  final bool isBaseSkill;

  @override
  Widget build(BuildContext context) {

    

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextRoundedWithBackground(isBaseSkill ? 'Base Skill' : 'Rage Skill',
                fontSize: 20, fontWeight: FontWeight.bold),
            Text(
              skill.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              skill.description,
              style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                // ...getEffectsIcons,
                // ...getDebuffDescription,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
