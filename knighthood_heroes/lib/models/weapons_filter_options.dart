import 'package:knighthood_heroes/data/enums.dart';

class WeaponsFilterOptions {
  const WeaponsFilterOptions(
    this.weaponType,
    this.rarity,
  );

  final EWeaponType weaponType;
  final ERarity rarity;

  WeaponsFilterOptions withWeaponType(EWeaponType weaponType) {
    return WeaponsFilterOptions(weaponType, rarity);
  }

  WeaponsFilterOptions withRarity(ERarity rarity) {
    return WeaponsFilterOptions(weaponType, rarity);
  }
}