import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/models/weapons_crafting_info.dart';
import 'package:knighthood_heroes/widgets/enemy_type_badge.dart';
import 'package:knighthood_heroes/widgets/rarity_banner.dart';

class WeaponCraftingPresenter extends StatelessWidget {
  const WeaponCraftingPresenter(this.weaponCraftingInfo, {super.key});

  final WeaponsCraftingInfo weaponCraftingInfo;

  List<Widget> get _getEnemyTypeWidgets => weaponCraftingInfo.monsterTypeCrafting
      .map((enemyType) => EnemyTypeBadge(
            enemyType,
            size: 28,
          ))
      .toList();

  List<Widget> get _getSameTypeCraftingpart {
    if (weaponCraftingInfo.rarity == ERarity.rare) {
      return [];
    }

    return [
      Text('OR chance from',
          style: commonTextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
      const SizedBox(width: 5),
      const Icon(Icons.arrow_forward, size: 20, color: Colors.white),
      Text('${weaponCraftingInfo.getCraftCountbyRarity(weaponCraftingInfo.rarity)}x',
          style: commonTextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(width: 5),
      Image.asset(
        ImagesHelper.getWeaponIconPath(weaponCraftingInfo.sameTypeCrafting),
        width: 30,
        height: 30,
        color: Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      child: FractionallySizedBox(
        widthFactor: 1.1,
        child: Transform.scale(
          scaleX: 0.9,
          child: Card(
            color: knighthoodContentColor,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Column(
                children: [
                  Row(
                    children: [
                      RarityBanner(
                        weaponCraftingInfo.rarity,
                        size: 25,
                      ),
                      const SizedBox(width: 5),
                      Image.asset(
                        ImagesHelper.getWeaponIconPath(weaponCraftingInfo.weaponType),
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_forward, size: 20, color: Colors.white),
                      const SizedBox(width: 5),
                      ..._getEnemyTypeWidgets,
                      const SizedBox(width: 15),
                      ..._getSameTypeCraftingpart
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
