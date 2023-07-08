import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/general/gradient_container.dart';
import 'package:knighthood_heroes/widgets/app_bar_background.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credits'),
        flexibleSpace: AppBarBackground(colors: appBarGradientColors),
      ),
      body: GradientContainer.linear(
        gradientColors: backgroundGradientColors,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Credits'),
            ],
          ),
        ),
      ),
    );
  }
}
