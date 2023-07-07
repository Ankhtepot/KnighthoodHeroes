import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/enemy_type_badge.dart';
import 'package:knighthood_heroes/widgets/filter_options/enum_dropdown.dart';
import 'package:knighthood_heroes/widgets/filter_options/skill_options.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

class FilterOptions extends StatefulWidget {
  const FilterOptions(this.setFilterOptions, {super.key});

  final void Function(HeroesFilterOptions) setFilterOptions;

  @override
  State<FilterOptions> createState() => _FilterOptionsState();
}

class _FilterOptionsState extends State<FilterOptions> {
  EHeroClass _selectedHeroClass = EHeroClass.none;
  EHeroType _selectedHeroType = EHeroType.none;
  ERarity _selectedRarity = ERarity.none;
  EEnemyType _selectedEnemyType = EEnemyType.none;

  ESkillClass _selectedBaseSkillClass = ESkillClass.none;
  ESkillEffect _selectedBaseSkillTarget = ESkillEffect.none;
  ESkillEffect _selectedBaseSkillEffect = ESkillEffect.none;
  ESkillDebuff _selectedBaseSkillStrongVsDebuff = ESkillDebuff.none;
  ESkillDebuff _selectedBaseSkillChanceToDebuff = ESkillDebuff.none;

  ESkillClass _selectedRageSkillClass = ESkillClass.none;
  ESkillEffect _selectedRageSkillTarget = ESkillEffect.none;
  ESkillEffect _selectedRageSkillEffect = ESkillEffect.none;
  ESkillDebuff _selectedRageSkillStrongVsDebuff = ESkillDebuff.none;
  ESkillDebuff _selectedRageSkillChanceToDebuff = ESkillDebuff.none;

  void _onApply() {
    widget.setFilterOptions(HeroesFilterOptions(
      heroClass: _selectedHeroClass,
      heroType: _selectedHeroType,
      rarity: _selectedRarity,
      enemyType: _selectedEnemyType,
      baseSkillClass: _selectedBaseSkillClass,
      baseSkillTarget: _selectedBaseSkillTarget,
      baseSkillEffect: _selectedBaseSkillEffect,
      baseSkillStrongVsDebuff: _selectedBaseSkillStrongVsDebuff,
      baseSkillChanceToDebuff: _selectedBaseSkillChanceToDebuff,
      rageSkillClass: _selectedRageSkillClass,
      rageSkillTarget: _selectedRageSkillTarget,
      rageSkillEffect: _selectedRageSkillEffect,
      rageSkillStrongVsDebuff: _selectedRageSkillStrongVsDebuff,
      rageSkillChanceToDebuff: _selectedRageSkillChanceToDebuff,
    ));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter Options'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ElevatedButton(
              onPressed: _onApply,
              child: const Text('Apply Filters'),
            ),
            EnumDropdown(
              'Strong against:',
              selectedValue: _selectedEnemyType,
              onChanged: (value) => setState(() => _selectedEnemyType = value!),
              enumVaules: EEnemyType.values,
              elementBuilder: (value) {
                return Row(
                  children: [
                    EnemyTypeBadge(value!),
                    const SizedBox(width: 5),
                    Text(value.toString().split('.').last.capitalize().insertSpaceForCamelCaseString()),
                  ],
                );
              },
            ),
            EnumDropdown<ERarity>(
              'Rarity:',
              selectedValue: _selectedRarity,
              onChanged: (value) => setState(() => _selectedRarity = value!),
              enumVaules: ERarity.values,
              elementBuilder: (value) => TextRoundedWithBackground(
                value.toString().split('.').last.capitalize(),
                textColor: Colors.black,
                backgroundColor: getRarityColor(value!),
                fontWeight: FontWeight.bold,
              ),
            ),
            EnumDropdown<EHeroClass>(
              'Hero Class:',
              selectedValue: _selectedHeroClass,
              onChanged: (value) => setState(() => _selectedHeroClass = value!),
              enumVaules: EHeroClass.values,
            ),
            EnumDropdown<EHeroType>(
              'Hero Type:',
              selectedValue: _selectedHeroType,
              onChanged: (value) => setState(() => _selectedHeroType = value!),
              enumVaules: EHeroType.values,
            ),
            const SizedBox(height: 5),
            const TextRoundedWithBackground('Base skill options:'),
            SkillOptions(
                selectedSkillClass: _selectedBaseSkillClass,
                selectedSkillEffect: _selectedBaseSkillEffect,
                selectedSkillTarget: _selectedBaseSkillTarget,
                selectedSkillChanceToDebuff: _selectedBaseSkillChanceToDebuff,
                selectedSkillStrongVsDebuff: _selectedBaseSkillStrongVsDebuff,
                onSkillClassChanged: (value) => setState(() => _selectedBaseSkillClass = value!),
                onSkillEffectChanged: (value) => setState(() => _selectedBaseSkillEffect = value!),
                onSkillTargetChanged: (value) => setState(() => _selectedBaseSkillTarget = value!),
                onSkillChanceToDebuffChanged: (value) => setState(() => _selectedBaseSkillChanceToDebuff = value!),
                onSkillStrongVsDebuffChanged: (value) => setState(() => _selectedBaseSkillStrongVsDebuff = value!)),
            const SizedBox(height: 5),
            const TextRoundedWithBackground('Rage skill options:'),
            SkillOptions(
                selectedSkillClass: _selectedRageSkillClass,
                selectedSkillEffect: _selectedRageSkillEffect,
                selectedSkillTarget: _selectedRageSkillTarget,
                selectedSkillChanceToDebuff: _selectedRageSkillChanceToDebuff,
                selectedSkillStrongVsDebuff: _selectedRageSkillStrongVsDebuff,
                onSkillClassChanged: (value) => setState(() => _selectedRageSkillClass = value!),
                onSkillEffectChanged: (value) => setState(() => _selectedRageSkillEffect = value!),
                onSkillTargetChanged: (value) => setState(() => _selectedRageSkillTarget = value!),
                onSkillChanceToDebuffChanged: (value) => setState(() => _selectedRageSkillChanceToDebuff = value!),
                onSkillStrongVsDebuffChanged: (value) => setState(() => _selectedRageSkillStrongVsDebuff = value!)),
          ]),
        ),
      ),
    );
  }
}
