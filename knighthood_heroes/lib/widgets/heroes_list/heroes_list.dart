import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card.dart';

List<KnighthoodHero> heroes = List.of(getHeroes);

class HeroesList extends StatefulWidget {
  const HeroesList({super.key});

  @override
  State<HeroesList> createState() => _HeroesListState();
}

class _HeroesListState extends State<HeroesList> {
  List<Widget> getHeroes() {
    return heroes.map((hero) {
      return HeroCard(hero);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: getHeroes(),
      ),
    );
  }
}
