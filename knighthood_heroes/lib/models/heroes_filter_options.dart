import 'package:knighthood_heroes/data/enums.dart';

class HeroesFilterOptions {
  const HeroesFilterOptions({
    this.heroClass = EHeroClass.none,
    this.heroType = EHeroType.none,
    this.rarity = ERarity.none,
  });

  final EHeroClass heroClass;
  final EHeroType heroType;
  final ERarity rarity;
}
