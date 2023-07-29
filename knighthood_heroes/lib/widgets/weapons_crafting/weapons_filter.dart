import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/weapons_filter_options.dart';
import 'package:knighthood_heroes/widgets/rarity_badge.dart';
import 'package:knighthood_heroes/widgets/weapons_crafting/rarity_button.dart';
import 'package:knighthood_heroes/widgets/weapons_crafting/weapon_button.dart';

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
          elevation: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RarityButton(
                      rarity: ERarity.none,
                      onPressed: _onRarityButtonPressed,
                      color: _rarity == ERarity.none
                          ? getRarityColor(ERarity.none)
                          : getRarityColor(ERarity.none).withOpacity(0.5)),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.rare,
                      onPressed: _onRarityButtonPressed,
                      color: _rarity == ERarity.rare
                          ? getRarityColor(ERarity.rare)
                          : getRarityColor(ERarity.rare).withOpacity(0.5)),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.epic,
                      onPressed: _onRarityButtonPressed,
                      color: _rarity == ERarity.epic
                          ? getRarityColor(ERarity.epic)
                          : getRarityColor(ERarity.epic).withOpacity(0.5)),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.legendary,
                      onPressed: _onRarityButtonPressed,
                      fontSize: 12,
                      color: _rarity == ERarity.legendary
                          ? getRarityColor(ERarity.legendary)
                          : getRarityColor(ERarity.legendary).withOpacity(0.5)),
                  const SizedBox(width: 5),
                  RarityButton(
                      rarity: ERarity.unique,
                      onPressed: _onRarityButtonPressed,
                      color: _rarity == ERarity.unique
                          ? getRarityColor(ERarity.unique)
                          : getRarityColor(ERarity.unique).withOpacity(0.5)),
                ],
              ),
            ],
          ),
        ),
        // Weapon Type Filter
        Card(
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
