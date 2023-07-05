import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card.dart';

List<KnighthoodHero> heroes = List.of(getHeroes);

class HeroesList extends StatefulWidget {
  const HeroesList(this.filterOptions, {super.key});

  final HeroesFilterOptions filterOptions;

  @override
  State<HeroesList> createState() => _HeroesListState();
}

class _HeroesListState extends State<HeroesList> {

  List<KnighthoodHero> filteredHeroes = List.of(heroes);

  List<Widget> getHeroes() {
    return filteredHeroes.map((hero) {
      return HeroCard(hero);
    }).toList();
  }

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: filteredHeroes.length,
      itemBuilder: (context, index) {
        return HeroCard(filteredHeroes[index]);
      }
    );
}
