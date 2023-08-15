import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/providers/hero_filters_provider.dart';
import 'package:knighthood_heroes/providers/heroes_expanded_states.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card_detailed.dart';

// var heroesExpandedStatesProvider = StateProvider<List<bool>>((ref) => []);

class HeroesList extends ConsumerWidget {
  const HeroesList({super.key});

//   @override
//   ConsumerState<HeroesList> createState() => _HeroesListState();
// }

// class _HeroesListState extends ConsumerState<HeroesList> {
//   List<bool> expandedStates = [];

  // @override
  // void initState() {
  //   super.initState();
  //   heroesExpandedStatesProvider.i;
  // }

  // @override
  // void didUpdateWidget(covariant HeroesList oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   expandedStates = List.filled(widget.heroes.length, false);
  // }

  // void toggleExpansion(int index) {
  //   setState(() {
  //     expandedStates[index] = !expandedStates[index];
  //   });
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<KnighthoodHero> filteredHeroes = ref.watch(filteredHeroesProvider).exclusive;
    final expandedStates = ref.watch(heroesExpandedStatesProvider);
    final expandedStatesNotifier = ref.read(heroesExpandedStatesProvider.notifier);

    if (expandedStates.isEmpty) {
      expandedStatesNotifier.initState(filteredHeroes.length);
    }

    if (filteredHeroes.isNotEmpty) {
      return ListView.builder(
        itemCount: filteredHeroes.length,
        itemBuilder: (context, index) {
          final isExpanded = expandedStates[index];
          return InkWell(
            onTap: () {
              expandedStates[index] = !isExpanded;
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
              child: TextRoundedWithBackground.header('No heroes mathing filter criteria found.'),
            ),
          ),
        ],
      );
    }
  }
}
