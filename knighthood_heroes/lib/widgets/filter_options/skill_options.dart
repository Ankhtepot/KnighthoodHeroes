import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/enum_dropdown.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/skill.dart';
import 'package:knighthood_heroes/providers/hero_filters_provider.dart';

class SkillOptions extends ConsumerWidget {
  const SkillOptions({
    required this.isBaseSkill,
    super.key,
  });

  final bool isBaseSkill;

  static const double _skillEffectFontSize = 15;
  static const double _skillEffectEnumTitleGap = 5;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedFilters = ref.watch(heroesFilterProvider);
    var filtersNotifier = ref.read(heroesFilterProvider.notifier);

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
          selectedValue: isBaseSkill ? selectedFilters.baseSkillClass : selectedFilters.rageSkillClass,
          onChanged: (value) =>
              isBaseSkill ? filtersNotifier.setBaseSkillClass(value!) : filtersNotifier.setRageSkillClass(value!),
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
          selectedValue:
              isBaseSkill ? selectedFilters.baseSkillChanceToDebuff : selectedFilters.rageSkillChanceToDebuff,
          onChanged: (value) => isBaseSkill
              ? filtersNotifier.setBaseSkillChanceToDebuff(value!)
              : filtersNotifier.setRageSkillChanceToDebuff(value!),
          enumVaules: ESkillDebuff.values,
          element: onSkillDebuffChangedBuilder,
        ),
        // Skill Strong vs debuff
        EnumDropdown<ESkillDebuff>('Strong vs debuff:',
            selectedValue:
                isBaseSkill ? selectedFilters.baseSkillStrongVsDebuff : selectedFilters.rageSkillStrongVsDebuff,
            onChanged: (value) => isBaseSkill
                ? filtersNotifier.setBaseSkillStrongVsDebuff(value!)
                : filtersNotifier.setRageSkillStrongVsDebuff(value!),
            enumVaules: ESkillDebuff.values,
            element: onSkillDebuffChangedBuilder),
        // Targets
        EnumDropdown<ESkillEffect>(
          'Skill targets:',
          titleFontSize: _skillEffectFontSize,
          titleGap: _skillEffectEnumTitleGap,
          selectedValue: isBaseSkill ? selectedFilters.baseSkillTarget : selectedFilters.rageSkillTarget,
          onChanged: (value) =>
              isBaseSkill ? filtersNotifier.setBaseSkillTarget(value!) : filtersNotifier.setRageSkillTarget(value!),
          enumVaules: Skill.getSkillTargets,
          element: onSkillEffectChangedBuilder,
        ),
        // Skill Effect
        EnumDropdown<ESkillEffect>(
          'Causes effect:',
          titleFontSize: _skillEffectFontSize,
          titleGap: _skillEffectEnumTitleGap,
          selectedValue: isBaseSkill ? selectedFilters.baseSkillEffect : selectedFilters.rageSkillEffect,
          onChanged: (value) =>
              isBaseSkill ? filtersNotifier.setBaseSkillEffect(value!) : filtersNotifier.setRageSkillEffect(value!),
          enumVaules: Skill.getSkillDebuffs,
          element: onSkillEffectChangedBuilder,
        ),
      ],
    );
  }
}
