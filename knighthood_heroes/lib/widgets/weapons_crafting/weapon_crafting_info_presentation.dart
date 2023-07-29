import 'package:flutter/material.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/models/weapons_crafting_info.dart';
import 'package:knighthood_heroes/widgets/enemy_type_badge.dart';
import 'package:knighthood_heroes/widgets/rarity_badge.dart';

class WeaponCraftingPresentation extends StatelessWidget {
  const WeaponCraftingPresentation(this.weaponCraftingInfo, {super.key});

  final WeaponsCraftingInfo weaponCraftingInfo;

  List<Widget> get _getEnemyTypeWidgets {
    return weaponCraftingInfo.monsterTypeCrafting.map((e) => EnemyTypeBadge(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      child: Row(
        children: [
          RarityBadge(weaponCraftingInfo.rarity),
          const SizedBox(width: 5),
          Image.asset(ImagesHelper.getWeaponIconPath(weaponCraftingInfo.weaponType), width: 30, height: 30),
          const SizedBox(width: 5),
          const Icon(Icons.arrow_forward, size: 20, color: Colors.black),
          const SizedBox(width: 5),
          ..._getEnemyTypeWidgets,
          const SizedBox(width: 5),
          const TextRoundedWithBackground('OR', fontWeight: FontWeight.bold),
          const SizedBox(width: 5),
          TextRoundedWithBackground(
            '${weaponCraftingInfo.getCraftCountbyRarity(weaponCraftingInfo.rarity)}x',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(width: 5),
          Image.asset(ImagesHelper.getWeaponIconPath(weaponCraftingInfo.sameTypeCrafting), width: 30, height: 30),
        ],
      ),
    );
  }
}