import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/weapons_crafting_data.dart';
import 'package:knighthood_heroes/helpers/navigation.dart';
import 'package:knighthood_heroes/models/weapons_crafting_info.dart';
import 'package:knighthood_heroes/models/weapons_filter_options.dart';
import 'package:knighthood_heroes/widgets/app_bar_background.dart';
import 'package:knighthood_heroes/widgets/main_drawer.dart';
import 'package:knighthood_heroes/widgets/weapons_crafting/weapon_crafting_info_presentation.dart';
import 'package:knighthood_heroes/widgets/weapons_crafting/weapons_filter.dart';

class WeaponsScreen extends StatefulWidget {
  const WeaponsScreen({super.key});

  @override
  State<WeaponsScreen> createState() => _WeaponsScreenState();
}

class _WeaponsScreenState extends State<WeaponsScreen> {
  WeaponsFilterOptions _filterOptions = const WeaponsFilterOptions(EWeaponType.none, ERarity.none);

  void _setFilterOptions(WeaponsFilterOptions filterOptions) {
    setState(() {
      _filterOptions = filterOptions;
    });
  }

  List<Widget> _getFilteredWeapons() {
    List<WeaponsCraftingInfo> infos = List<WeaponsCraftingInfo>.from(getWeaponsCraftingInfos);
    if (_filterOptions.rarity != ERarity.none) {
      infos = infos.where((element) => element.rarity == _filterOptions.rarity).toList();
    }
    if (_filterOptions.weaponType != EWeaponType.none) {
      infos = infos.where((element) => element.weaponType == _filterOptions.weaponType).toList();
    }

    return infos.map((e) => WeaponCraftingPresentation(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weapons Crafting', style: TextStyle(color: appBarTextColor, fontWeight: FontWeight.bold)),
        flexibleSpace: AppBarBackground(
          colors: appBarGradientColors,
        ),
      ),
      drawer: MainDrawer((screenId) => Navigation.setScreen(context, screenId)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: WeaponsFilter(_setFilterOptions),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              ..._getFilteredWeapons(),
            ],
          ),
        ],
      ),
    );
  }
}
