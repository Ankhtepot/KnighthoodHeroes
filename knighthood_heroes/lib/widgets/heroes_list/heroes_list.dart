import 'package:flutter/material.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card.dart';

class HeroesList extends StatelessWidget {
  const HeroesList(this.filterOptions, this.heroes, {super.key});

  final HeroesFilterOptions filterOptions;
  final List<KnighthoodHero> heroes;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: heroes.length,
      itemBuilder: (context, index) {
        return HeroCard(heroes[index]);
      });
}
