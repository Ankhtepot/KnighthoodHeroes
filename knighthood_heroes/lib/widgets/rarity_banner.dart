import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';

class RarityBanner extends StatelessWidget {
  const RarityBanner(
    this.rarity, {
    super.key,
    this.size = 30,
  });

  final ERarity rarity;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImagesHelper.getRarityBanner(rarity),
      height: size,
    );
  }
}
