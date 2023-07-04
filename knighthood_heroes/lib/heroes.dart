import 'package:flutter/material.dart';
import 'package:knighthood_heroes/widgets/heroes_list/heroes_list.dart';

class Heroes extends StatefulWidget {
  const Heroes({super.key});

  @override
  State<Heroes> createState() => _HeroesState();
}

class _HeroesState extends State<Heroes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Knighthood Heroes'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Options'),
            HeroesList(),
          ],
        ),
      ),
    );
  }
}
