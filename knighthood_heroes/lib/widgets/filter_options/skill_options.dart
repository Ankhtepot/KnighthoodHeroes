import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/enum_dropdown.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/skill.dart';

class SkillOptions extends StatelessWidget {
  const SkillOptions({
    required this.selectedSkillClass,
    required this.selectedSkillEffect,
    required this.selectedSkillTarget,
    required this.selectedSkillChanceToDebuff,
    required this.selectedSkillStrongVsDebuff,
    required this.onSkillClassChanged,
    required this.onSkillEffectChanged,
    required this.onSkillTargetChanged,
    required this.onSkillChanceToDebuffChanged,
    required this.onSkillStrongVsDebuffChanged,
    super.key,
  });

  final ESkillClass selectedSkillClass;
  final ESkillEffect selectedSkillEffect;
  final ESkillEffect selectedSkillTarget;
  final ESkillDebuff selectedSkillChanceToDebuff;
  final ESkillDebuff selectedSkillStrongVsDebuff;
  final Function(ESkillClass?) onSkillClassChanged;
  final Function(ESkillEffect?) onSkillEffectChanged;
  final Function(ESkillEffect?) onSkillTargetChanged;
  final Function(ESkillDebuff?) onSkillChanceToDebuffChanged;
  final Function(ESkillDebuff?) onSkillStrongVsDebuffChanged;

  static const double _skillEffectFontSize = 15;
  static const double _skillEffectEnumTitleGap = 5;

  @override
  Widget build(BuildContext context) {
    Widget onSkillDebuffChangedBuilder(ESkillDebuff? value) {
      return Card(
          color: knighthoodContentColor,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Skill.getDebuffBadge(value!, bothIfAvailable: true, noneText: 'All'),
          ));
    }

    Widget onSkillEffectChangedBuilder(ESkillEffect? value) {
      return Card(
        color: knighthoodContentColor,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image(
                    image: AssetImage(Skill.getSkillEffectImagePath(value!)),
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                Skill.getSkillEffectDisplayText(value),
                style: commonTextStyle(fontSize: _skillEffectFontSize),
              ),
            ],
          ),
        ),
      );
    }

    String getValueText(String text) => text == 'None' ? 'All' : text;

    return Column(
      children: [
        // Skill Main Effect
        EnumDropdown<ESkillClass>(
          'Main effect:',
          selectedValue: selectedSkillClass,
          onChanged: onSkillClassChanged,
          enumVaules: ESkillClass.values,
          element: (value) {
            return Card(
              color: knighthoodContentColor,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image(image: AssetImage(Skill.getSkillClassImagePath(value!)), width: 20, height: 20),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(getValueText(value.toString().split('.').last.capitalize().insertSpaceForCamelCaseString()),
                        style: commonTextStyle()),
                  ],
                ),
              ),
            );
          },
        ),
        // Skil Chance to debuff
        EnumDropdown<ESkillDebuff>(
          'Chance to debuff:',
          selectedValue: selectedSkillChanceToDebuff,
          onChanged: onSkillChanceToDebuffChanged,
          enumVaules: ESkillDebuff.values,
          element: onSkillDebuffChangedBuilder,
        ),
        // Skill Strong vs debuff
        EnumDropdown<ESkillDebuff>('Strong vs debuff:',
            selectedValue: selectedSkillStrongVsDebuff,
            onChanged: onSkillStrongVsDebuffChanged,
            enumVaules: ESkillDebuff.values,
            element: onSkillDebuffChangedBuilder),
        // Targets
        EnumDropdown<ESkillEffect>(
          'Skill targets:',
          titleFontSize: _skillEffectFontSize,
          titleGap: _skillEffectEnumTitleGap,
          selectedValue: selectedSkillTarget,
          onChanged: onSkillTargetChanged,
          enumVaules: Skill.getSkillTargets,
          element: onSkillEffectChangedBuilder,
        ),
        // Skill Effect
        EnumDropdown<ESkillEffect>(
          'Causes effect:',
          titleFontSize: _skillEffectFontSize,
          titleGap: _skillEffectEnumTitleGap,
          selectedValue: selectedSkillEffect,
          onChanged: onSkillEffectChanged,
          enumVaules: Skill.getSkillDebuffs,
          element: onSkillEffectChangedBuilder,
        ),
      ],
    );
  }
}
