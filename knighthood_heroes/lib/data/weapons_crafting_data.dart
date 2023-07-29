import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/weapons_crafting_info.dart';

List<WeaponsCraftingInfo> get getWeaponsCraftingInfos => [
      // Swords
      const WeaponsCraftingInfo(EWeaponType.sword, ERarity.rare, EWeaponType.hammer, [
        EEnemyType.beast,
        EEnemyType.cult,
        EEnemyType.troll,
        EEnemyType.demon,
      ]),
      const WeaponsCraftingInfo(EWeaponType.sword, ERarity.epic, EWeaponType.hammer, [
        EEnemyType.goblin,
        EEnemyType.militia,
        EEnemyType.golem,
      ]),
      const WeaponsCraftingInfo(EWeaponType.sword, ERarity.legendary, EWeaponType.hammer, [
        EEnemyType.undead,
        EEnemyType.outlaw,
      ]),
      const WeaponsCraftingInfo(EWeaponType.sword, ERarity.unique, EWeaponType.hammer, [
        EEnemyType.troll,
        EEnemyType.demon,
        EEnemyType.goblin,
        EEnemyType.cult,
        EEnemyType.beast,
      ]),
      // Axes
      const WeaponsCraftingInfo(EWeaponType.axe, ERarity.rare, EWeaponType.sword, [
        EEnemyType.outlaw,
        EEnemyType.undead,
      ]),
      const WeaponsCraftingInfo(EWeaponType.axe, ERarity.epic, EWeaponType.sword, [
        EEnemyType.beast,
        EEnemyType.cult,
        EEnemyType.troll,
        EEnemyType.demon,
      ]),
      const WeaponsCraftingInfo(EWeaponType.axe, ERarity.legendary, EWeaponType.sword, [
        EEnemyType.goblin,
        EEnemyType.golem,
        EEnemyType.militia,
      ]),
      const WeaponsCraftingInfo(EWeaponType.axe, ERarity.unique, EWeaponType.sword, [
        EEnemyType.outlaw,
        EEnemyType.undead,
      ]),
      // Hammers
      const WeaponsCraftingInfo(EWeaponType.hammer, ERarity.rare, EWeaponType.axe, [
        EEnemyType.goblin,
        EEnemyType.militia,
        EEnemyType.golem,
      ]),
      const WeaponsCraftingInfo(EWeaponType.hammer, ERarity.epic, EWeaponType.axe, [
        EEnemyType.outlaw,
        EEnemyType.undead,
      ]),
      const WeaponsCraftingInfo(EWeaponType.hammer, ERarity.legendary, EWeaponType.axe, [
        EEnemyType.beast,
        EEnemyType.cult,
        EEnemyType.troll,
        EEnemyType.demon,
      ]),
      const WeaponsCraftingInfo(EWeaponType.hammer, ERarity.unique, EWeaponType.axe, [
        EEnemyType.militia,
        EEnemyType.golem,
      ]),
    ];
