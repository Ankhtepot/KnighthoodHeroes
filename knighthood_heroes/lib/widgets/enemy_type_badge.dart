import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';

class EnemyTypeBadge extends StatelessWidget {
  const EnemyTypeBadge(this.enemyType, {super.key, this.size = 20});

  final EEnemyType enemyType;
  final double size;

  @override
  Widget build(BuildContext context) => Padding(
        padding: enemyType == EEnemyType.none ? EdgeInsets.symmetric(horizontal: size - 23) : const EdgeInsets.all(0),
        child: Image.asset(
          KnighthoodHero.getEnemyTypeImagePath(enemyType),
          height: enemyType == EEnemyType.none ? 15 : size,
        ),
      );
}
