import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/helpers/navigation.dart';
import 'package:knighthood_heroes/models/weapons_filter_options.dart';
import 'package:knighthood_heroes/widgets/app_bar_background.dart';
import 'package:knighthood_heroes/widgets/main_drawer.dart';
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
          Expanded(child: WeaponsFilter(_setFilterOptions)),
        ],
      ),
    );
  }
}
