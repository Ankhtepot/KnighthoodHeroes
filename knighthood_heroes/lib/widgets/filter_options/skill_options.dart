import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/skill.dart';
import 'package:knighthood_heroes/models/text_colors.dart';
import 'package:knighthood_heroes/widgets/filter_options/enum_dropdown.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

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
      TextColors textColor = Skill.getDebuffColors(value!);
      return TextRoundedWithBackground(
        value.toString().split('.').last.capitalize(),
        backgroundColor: textColor.backgroundColor,
        textColor: textColor.textColor,
      );
    }

    Widget onSkillEffectChangedBuilder(ESkillEffect? value) {
      return Row(
        children: [
          Image(
            image: AssetImage(Skill.getSkillEffectImagePath(value!)),
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 5),
          Text(
            Skill.getSkillEffectDisplayText(value),
            style: const TextStyle(fontSize: _skillEffectFontSize),
          ),
        ],
      );
    }

    return Column(
      children: [
        // Skill Main Effect
        EnumDropdown<ESkillClass>(
          'Main effect:',
          selectedValue: selectedSkillClass,
          onChanged: onSkillClassChanged,
          enumVaules: ESkillClass.values,
          elementBuilder: (value) {
            return Row(
              children: [
                Image(image: AssetImage(Skill.getSkillClassImagePath(value!)), width: 20, height: 20),
                const SizedBox(width: 5),
                Text(value.toString().split('.').last.capitalize().insertSpaceForCamelCaseString()),
              ],
            );
          },
        ),
        // Skil Chance to debuff
        EnumDropdown<ESkillDebuff>(
          'Chance to debuff:',
          selectedValue: selectedSkillChanceToDebuff,
          onChanged: onSkillChanceToDebuffChanged,
          enumVaules: ESkillDebuff.values,
          elementBuilder: onSkillDebuffChangedBuilder,
        ),
        // Skill Strong vs debuff
        EnumDropdown<ESkillDebuff>('Strong vs debuff:',
            selectedValue: selectedSkillStrongVsDebuff,
            onChanged: onSkillStrongVsDebuffChanged,
            enumVaules: ESkillDebuff.values,
            elementBuilder: onSkillDebuffChangedBuilder),
        // Targets
        EnumDropdown<ESkillEffect>(
          'Skill targets:',
          titleFontSize: _skillEffectFontSize,
          titleGap: _skillEffectEnumTitleGap,
          selectedValue: selectedSkillTarget,
          onChanged: onSkillTargetChanged,
          enumVaules: Skill.getSkillTargets,
          elementBuilder: onSkillEffectChangedBuilder,
        ),
        // Skill Effect
        EnumDropdown<ESkillEffect>(
          'Causes effect:',
          titleFontSize: _skillEffectFontSize,
          titleGap: _skillEffectEnumTitleGap,
          selectedValue: selectedSkillEffect,
          onChanged: onSkillEffectChanged,
          enumVaules: Skill.getSkillDebuffs,
          elementBuilder: onSkillEffectChangedBuilder,
        ),
      ],
    );
  }
}
