import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/filter_options/filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/heroes_list.dart';

class Heroes extends StatefulWidget {
  const Heroes({super.key});

  @override
  State<Heroes> createState() => _HeroesState();
}

class _HeroesState extends State<Heroes> {
  List<KnighthoodHero> heroes = List.of(getHeroes);
  HeroesFilterOptions options = const HeroesFilterOptions();

  @override
  void initState() {
    options = const HeroesFilterOptions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void setFilterOptions(HeroesFilterOptions filterOptions) {
      setState(() => options = filterOptions);
    }

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
                  builder: (context) => FilterOptions(setFilterOptions),
                ),
              );
            },
          ),
          IconButton(
            onPressed: () => setFilterOptions(const HeroesFilterOptions()),
            icon: const Icon(Icons.cleaning_services),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Options'),
            Expanded(child: HeroesList(options, heroes)),
          ],
        ),
      ),
    );
  }
}
