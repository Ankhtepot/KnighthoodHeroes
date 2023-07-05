import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/skill.dart';

class SkillOptions extends StatelessWidget {
  const SkillOptions({
    required this.selectedSkillClass,
    required this.selectedSkillEffect,
    required this.selectedSkillChanceToDebuff,
    required this.selectedSkillStrongVsDebuff,

    required this.onSkillClassChanged,
    required this.onSkillEffectChanged,
    required this.onSkillChanceToDebuffChanged,
    required this.onSkillStrongVsDebuffChanged,

    super.key,
  });

  final ESkillClass selectedSkillClass;
  final ESkillEffect selectedSkillEffect;
  final ESkillDebuff selectedSkillChanceToDebuff;
  final ESkillDebuff selectedSkillStrongVsDebuff;
  final Function(ESkillClass?) onSkillClassChanged;
  final Function(ESkillEffect?) onSkillEffectChanged;
  final Function(ESkillDebuff?) onSkillChanceToDebuffChanged;
  final Function(ESkillDebuff?) onSkillStrongVsDebuffChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Main effect:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 20),
            DropdownButton(
              value: selectedSkillClass,
              items: ESkillClass.values.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    children: [
                      Image(image: AssetImage(Skill.getSkillClassImagePath(value)), width: 20, height: 20),
                      const SizedBox(width: 5),
                      Text(value.toString().split('.').last.capitalize().insertSpaceForCamelCaseString()),
                    ],
                  ),
                );
              }).toList(),
              onChanged: onSkillClassChanged,
            ),
          ],
        ),
      ],
    );
  }
}
