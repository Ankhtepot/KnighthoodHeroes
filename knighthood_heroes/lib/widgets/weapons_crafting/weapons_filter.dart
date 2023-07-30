import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/weapons_filter_options.dart';
import 'package:knighthood_heroes/widgets/weapons_crafting/rarity_button.dart';
import 'package:knighthood_heroes/widgets/weapons_crafting/weapon_button.dart';

final Color cardBackgroundColor = Colors.brown.withAlpha(180);

class WeaponsFilter extends StatefulWidget {
  const WeaponsFilter(this.onFilterChanged, {super.key});

  final Function(WeaponsFilterOptions) onFilterChanged;

  @override
  State<WeaponsFilter> createState() => _WeaponsFilterState();
}

class _WeaponsFilterState extends State<WeaponsFilter> {
  ERarity _rarity = ERarity.none;
  EWeaponType _weaponType = EWeaponType.none;

  void _onRarityButtonPressed(ERarity rarity) {
    setState(() {
      _rarity = rarity;
    });
    widget.onFilterChanged(WeaponsFilterOptions(_weaponType, rarity));
  }

  void _onWeaponTypeButtonPressed(EWeaponType weaponType) {
    setState(() {
      _weaponType = weaponType;
    });
    widget.onFilterChanged(WeaponsFilterOptions(weaponType, _rarity));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Rarity Filter
        Card(
          color: cardBackgroundColor,
          elevation: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RarityButton(
                      rarity: ERarity.none,
                      onTap: _onRarityButtonPressed,
                      fontSize: 12,
                      isSelected: _rarity == ERarity.none),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.rare, onTap: _onRarityButtonPressed, isSelected: _rarity == ERarity.rare),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.epic, onTap: _onRarityButtonPressed, isSelected: _rarity == ERarity.epic),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.legendary,
                      onTap: _onRarityButtonPressed,
                      fontSize: 12,
                      isSelected: _rarity == ERarity.legendary),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.unique, onTap: _onRarityButtonPressed, isSelected: _rarity == ERarity.unique),
                ],
              ),
            ],
          ),
        ),
        // Weapon Type Filter
        Card(
          color: cardBackgroundColor,
          elevation: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeaponButton(
                    weaponType: EWeaponType.none,
                    onTap: _onWeaponTypeButtonPressed,
                    isSelected: _weaponType == EWeaponType.none,
                  ),
                  const SizedBox(width: 5),
                  WeaponButton(
                    weaponType: EWeaponType.sword,
                    onTap: _onWeaponTypeButtonPressed,
                    isSelected: _weaponType == EWeaponType.sword,
                  ),
                  const SizedBox(width: 5),
                  WeaponButton(
                    weaponType: EWeaponType.axe,
                    onTap: _onWeaponTypeButtonPressed,
                    isSelected: _weaponType == EWeaponType.axe,
                  ),
                  const SizedBox(width: 5),
                  WeaponButton(
                    weaponType: EWeaponType.hammer,
                    onTap: _onWeaponTypeButtonPressed,
                    isSelected: _weaponType == EWeaponType.hammer,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
