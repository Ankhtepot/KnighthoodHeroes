import 'package:knighthood_heroes/data/enums.dart';

class WeaponsCraftingInfo {
  const WeaponsCraftingInfo(this.weaponType, this.rarity, this.sameTypeCrafting, this.monsterTypeCrafting);

  final EWeaponType weaponType;
  final ERarity rarity;
  final EWeaponType sameTypeCrafting;
  final List<EEnemyType> monsterTypeCrafting;

  int getCraftCountbyRarity(ERarity rarity) => switch (rarity) {
      ERarity.rare => 3,
      ERarity.epic => 4,
      ERarity.legendary => 5,
      ERarity.unique => 6,
      _ => 0
    };
}