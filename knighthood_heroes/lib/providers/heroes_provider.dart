import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';

final Provider<List<KnighthoodHero>> heroesProvider = Provider<List<KnighthoodHero>>((ref) => List.of(getHeroes));
