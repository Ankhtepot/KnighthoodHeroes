import 'package:flutter/material.dart';
import 'package:knighthood_heroes/models/skill.dart';

String chanceIconPath = 'assets/images/skills/chance.png';

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
        const SizedBox(width: 5),
        Image(
          image: AssetImage(chanceIconPath),
          width: 20,
          height: 20,
        ),
        Icon(Icons.arrow_forward, size: 20),
      ],
    );
  }
}
