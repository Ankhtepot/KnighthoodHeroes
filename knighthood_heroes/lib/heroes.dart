import 'package:flutter/material.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/heroes_list.dart';

class Heroes extends StatefulWidget {
  const Heroes({super.key});

  final HeroesFilterOptions filterOptions = const HeroesFilterOptions();

  @override
  State<Heroes> createState() => _HeroesState();
}

class _HeroesState extends State<Heroes> {
  // TODO: Add filter options from Options widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Knighthood Heroes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Options'),
            Expanded(child: HeroesList(widget.filterOptions)),
          ],
        ),
      ),
    );
  }
}
