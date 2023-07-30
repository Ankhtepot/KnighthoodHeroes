import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';

const EdgeInsets _defaultPadding = EdgeInsets.all(19);

class EnemyTypeBadge extends StatelessWidget {
  const EnemyTypeBadge(this.enemyType, {super.key, this.iconSize = _defaultPadding});

  final EEnemyType enemyType;
  final EdgeInsets iconSize;

  @override
  Widget build(BuildContext context) => Image.asset(
        KnighthoodHero.getEnemyTypeImagePath(enemyType),
        width: iconSize.horizontal,
        height: iconSize.vertical,
      );
}
