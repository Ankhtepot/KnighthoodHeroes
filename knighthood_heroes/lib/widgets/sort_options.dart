import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/widgets/filter_options/enum_dropdown.dart';

class SortOptions extends StatefulWidget {
  const SortOptions(this.onChanged, {super.key, required this.sortType});

  final void Function(ESortType?) onChanged;
  final ESortType sortType;

  @override
  State<SortOptions> createState() => _SortOptionsState();
}

class _SortOptionsState extends State<SortOptions> {
  ESortType? _selectedSortType;

  @override
  void initState() {
    super.initState();
    _selectedSortType = widget.sortType;
  }

  void onChanged(ESortType? value) {
    setState(() {
      _selectedSortType = value ?? ESortType.none;
    });
    widget.onChanged(value);
  }

  String getDisplayText(ESortType value) => switch (value) {
        ESortType.none => 'None',
        ESortType.nameAZ => 'Name A -> Z',
        ESortType.nameZA => 'Name Z -> A',
        ESortType.rarityAsc => 'Rarity Common -> Legendary',
        ESortType.rarityDesc => 'Rarity Legendary -> Common',
        ESortType.heroClassAZ => 'Hero Class A -> Z',
        ESortType.heroClassZA => 'Hero Class Z -> A',
        ESortType.heroTypeAZ => 'Hero Type A -> Z',
        ESortType.heroTypeZA => 'Hero Type Z -> A',
        ESortType.enemyType => 'Strong Vs. Enemy Type',
      };

  @override
  Widget build(BuildContext context) {
    _selectedSortType = widget.sortType;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EnumDropdown<ESortType>('Sort by:',
              selectedValue: _selectedSortType!,
              onChanged: onChanged,
              enumVaules: ESortType.values,
              elementBuilder: (value) => Text(
                    getDisplayText(value!),
                    style: const TextStyle(fontSize: 16),
                  ))
        ],
      ),
    );
  }
}
