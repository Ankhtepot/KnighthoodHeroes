import 'package:flutter/material.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;
const Alignment centerAlignment = Alignment.center;
const Widget defaultChild = SizedBox();
const List<Color> defaultColors = [Colors.white];

enum GradientType { linear, circle, image }

class SpecialContainer extends StatelessWidget {
  const SpecialContainer.linearGradient(
      {super.key, this.gradientColors = defaultColors, this.child = defaultChild, this.imagePath = ''})
      : gradientType = GradientType.linear;
  const SpecialContainer.circleGradient(
      {super.key, this.gradientColors = defaultColors, this.child = defaultChild, this.imagePath = ''})
      : gradientType = GradientType.circle;
  const SpecialContainer.image({super.key, required this.imagePath, this.child = defaultChild})
      : gradientType = GradientType.image,
        gradientColors = defaultColors;

  final GradientType gradientType;
  final List<Color> gradientColors;
  final Widget child;
  final String imagePath;

  @override
  Widget build(BuildContext context) => Container(
      decoration: switch (gradientType) {
        GradientType.linear => getGradientLinearDecoration(),
        GradientType.circle => getGradientCircleDecoration(),
        GradientType.image => getImageDecoration(),
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
          fit: BoxFit.cover,
        ),
      );
}
