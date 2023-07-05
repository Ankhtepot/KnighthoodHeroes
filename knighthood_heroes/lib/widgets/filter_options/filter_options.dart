import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/filter_options/enum_dropdown.dart';

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

  void _onApply() {
    widget.setFilterOptions(HeroesFilterOptions(
      heroClass: _selectedHeroClass,
      heroType: _selectedHeroType,
      rarity: _selectedRarity,
      enemyType: _selectedEnemyType,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: _onApply,
                child: const Text('Apply Filters'),
              ),
              EnumDropdown(
                'Strong against:',
                selectedValue: _selectedEnemyType,
                onChanged: (value) => setState(() => _selectedEnemyType = value!),
                enumVaules: EEnemyType.values,
              ),
              EnumDropdown<ERarity>(
                'Rarity:',
                selectedValue: _selectedRarity,
                onChanged: (value) => setState(() => _selectedRarity = value!),
                enumVaules: ERarity.values,
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
            ],
          ),
        ),
      ),
    );
  }
}
