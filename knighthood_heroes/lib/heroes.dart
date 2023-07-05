import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/filter_options/filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/heroes_list.dart';

class Heroes extends StatefulWidget {
  const Heroes({super.key});

  final HeroesFilterOptions filterOptions = const HeroesFilterOptions();

  @override
  State<Heroes> createState() => _HeroesState();
}

class _HeroesState extends State<Heroes> {
  List<KnighthoodHero> filteredHeroes = List.of(getHeroes);

  void _setFilterOptions(HeroesFilterOptions filterOptions) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Knighthood Heroes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterOptions(_setFilterOptions),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Options'),
            Expanded(child: HeroesList(widget.filterOptions, filteredHeroes)),
          ],
        ),
      ),
    );
  }
}
