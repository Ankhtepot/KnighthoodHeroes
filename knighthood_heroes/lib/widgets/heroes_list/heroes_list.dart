import 'package:flutter/material.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card_detailed.dart';

class HeroesList extends StatefulWidget {
  const HeroesList(this.heroes, {super.key});

  final List<KnighthoodHero> heroes;

  @override
  State<HeroesList> createState() => _HeroesListState();
}

class _HeroesListState extends State<HeroesList> {
  List<bool> expandedStates = [];

  @override
  void initState() {
    super.initState();
    expandedStates = List.filled(widget.heroes.length, false);
  }

  @override
  void didUpdateWidget(covariant HeroesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    expandedStates = List.filled(widget.heroes.length, false);
  }

  void toggleExpansion(int index) {
    setState(() {
      expandedStates[index] = !expandedStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    List<KnighthoodHero> filteredHeroes = widget.heroes;

    if (filteredHeroes.isNotEmpty) {
      return ListView.builder(
        itemCount: filteredHeroes.length,
        itemBuilder: (context, index) {
          final isExpanded = expandedStates[index];
          return GestureDetector(
            onTap: () {
              toggleExpansion(index);
            },
            child: isExpanded ? HeroCardDetailed(filteredHeroes[index]) : HeroCard(filteredHeroes[index]),
          );
        },
      );
    } else {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: TextRoundedWithBackground(
                'No heroes mathing filter criteria found.',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                horizontalPadding: 40,
              ),
            ),
          ),
        ],
      );
    }
  }
}
