import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';

class EnemyTypeBadge extends StatelessWidget {
  const EnemyTypeBadge(this.enemyType, {super.key});

  final EEnemyType enemyType;

  @override
  Widget build(BuildContext context) => DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(
          KnighthoodHero.getEnemyTypeImagePath(enemyType),
          width: 20,
          height: 20,
        ),
      ),
    );
}
