import 'package:flutter/material.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;
const Alignment centerAlignment = Alignment.center;
const Widget defaultChild = SizedBox.shrink();
const List<Color> defaultColors = [Colors.white];

enum EContainerType { linear, circle, image }

class SpecialContainer extends StatelessWidget {
  const SpecialContainer.linearGradient({super.key, this.gradientColors = defaultColors, this.child})
      : containerType = EContainerType.linear,
        imagePath = '',
        oppacity = 1;
  const SpecialContainer.circleGradient({super.key, this.gradientColors = defaultColors, this.child})
      : containerType = EContainerType.circle,
        imagePath = '',
        oppacity = 1;
  const SpecialContainer.image({super.key, required this.imagePath, this.child, this.oppacity = 1})
      : containerType = EContainerType.image,
        gradientColors = defaultColors;

  final EContainerType containerType;
  final List<Color> gradientColors;
  final Widget? child;
  final String imagePath;
  final double oppacity;

  @override
  Widget build(BuildContext context) => Container(
      decoration: switch (containerType) {
        EContainerType.linear => getGradientLinearDecoration(),
        EContainerType.circle => getGradientCircleDecoration(),
        EContainerType.image => getImageDecoration(),
      },
      child: child);

  List<double> getGradientStops({start = 0, end = 1}) {
    List<double> stops = [];

    for (int i = 0; i < gradientColors.length; i++) {
      double stop = start + (end - start) / (gradientColors.length - 1) * i;
      // debugPrint('stop: $stop');
      stops.add(stop);
    }

    return stops;
  }

  BoxDecoration getGradientLinearDecoration() => BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
          tileMode: TileMode.clamp,
          stops: getGradientStops(),
        ),
      );

  BoxDecoration getGradientCircleDecoration() => BoxDecoration(
        gradient: RadialGradient(
          colors: gradientColors,
          center: centerAlignment,
          radius: 1.4,
          tileMode: TileMode.clamp,
          stops: getGradientStops(start: 0.3),
        ),
      );

  BoxDecoration getImageDecoration() => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          opacity: oppacity,
          fit: BoxFit.cover,
        ),
      );
}
