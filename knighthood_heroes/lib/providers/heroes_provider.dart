import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';

final Provider<HeroesProvider>heroesProvider = Provider<HeroesProvider>((ref) => HeroesProvider());

class HeroesProvider {
  final List<KnighthoodHero> heroes = List.of(getHeroes);
}