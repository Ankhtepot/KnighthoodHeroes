import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';

class LeadingArrowBuilder extends StatelessWidget {
  const LeadingArrowBuilder({super.key});

  @override
  Widget build(BuildContext context) => Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back, color: appBarTextColor),
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      );
}
