import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/filter_options/filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/heroes_list.dart';
import 'package:knighthood_heroes/widgets/sort_options.dart';

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

    void sortHeroes(ESortType sortType) {
      setState(() => switch (sortType) {
            ESortType.none => {},
            ESortType.nameAZ => heroes.sort((a, b) => a.name.compareTo(b.name)),
            ESortType.nameZA => heroes.sort((a, b) => b.name.compareTo(a.name)),
            ESortType.rarityAsc => heroes.sort((a, b) => a.rarity.index.compareTo(b.rarity.index)),
            ESortType.rarityDesc => heroes.sort((a, b) => b.rarity.index.compareTo(a.rarity.index)),
            ESortType.heroClassAZ => heroes.sort((a, b) => a.heroClass.index.compareTo(b.heroClass.index)),
            ESortType.heroClassZA => heroes.sort((a, b) => b.heroClass.index.compareTo(a.heroClass.index)),
            ESortType.heroTypeAZ => heroes.sort((a, b) => a.heroType.index.compareTo(b.heroType.index)),
            ESortType.heroTypeZA => heroes.sort((a, b) => b.heroType.index.compareTo(a.heroType.index)),
            ESortType.enemyType => heroes.sort((a, b) => a.strongVs.index.compareTo(b.strongVs.index))
          });
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
            SortOptions((p0) => setState(() {})),
            Expanded(child: HeroesList(options, heroes)),
          ],
        ),
      ),
    );
  }
}
