import 'package:flutter/material.dart';
import 'package:knighthood_heroes/models/skill.dart';

class SkillDescription extends StatelessWidget {
  const SkillDescription(this.skill, this.isBase, {super.key});
  final Skill skill;
  final bool isBase;

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
      ],
    );
  }
}
