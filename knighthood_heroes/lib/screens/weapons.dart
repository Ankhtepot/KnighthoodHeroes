import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/weapons_crafting_data.dart';
import 'package:knighthood_heroes/general/special_container.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/helpers/navigation.dart';
import 'package:knighthood_heroes/models/weapons_crafting_info.dart';
import 'package:knighthood_heroes/models/weapons_filter_options.dart';
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

  Widget getWeaponTitle(String title) => TextRoundedWithBackground(
        title,
        backgroundColor: const Color.fromARGB(220, 190, 227, 249),
        textColor: const Color.fromARGB(255, 0, 31, 57),
        fontWeight: FontWeight.bold,
        fontSize: 24,
        borderRadius: 20,
        horizontalPadding: 50,
      );

  List<Widget> _getFilteredWeapons() {
    List<WeaponsCraftingInfo> infos = List<WeaponsCraftingInfo>.from(getWeaponsCraftingInfos);

    if (_filterOptions.rarity == ERarity.none && _filterOptions.weaponType == EWeaponType.none) {
      List<WeaponsCraftingInfo> swords = infos.where((element) => element.weaponType == EWeaponType.sword).toList();
      List<WeaponsCraftingInfo> axes = infos.where((element) => element.weaponType == EWeaponType.axe).toList();
      List<WeaponsCraftingInfo> hammers = infos.where((element) => element.weaponType == EWeaponType.hammer).toList();
      return [
        getWeaponTitle('Swords'),
        ...swords.map((e) => WeaponCraftingPresentation(e)).toList(),
        const SizedBox(height: 10),
        getWeaponTitle('Axes'),
        ...axes.map((e) => WeaponCraftingPresentation(e)).toList(),
        const SizedBox(height: 10),
        getWeaponTitle('Hammers'),
        ...hammers.map((e) => WeaponCraftingPresentation(e)).toList(),
      ];
    }

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagesHelper.getBackgroundImagePath(EBackground.forge)),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppBar(
              title: const Text(
                'Weapons Crafting',
                style: TextStyle(
                  color: Colors.white, // Set the color of the title text
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
          ],
        ),
      ),
      drawer: MainDrawer((screenId) => Navigation.setScreen(context, screenId)),
      body: SpecialContainer.image(
        imagePath: ImagesHelper.getBackgroundImagePath(EBackground.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IntrinsicHeight(
              child: WeaponsFilter(_setFilterOptions),
            ),
            const SizedBox(height: 5),
            Card(
              color: Colors.white.withOpacity(0.8),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Note: Crafting by \'strong vs\' takes precedence. Crafting by weapon type (axe, sword, hammer) is not guaranteed as its sligtly based on RNG.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ..._getFilteredWeapons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
