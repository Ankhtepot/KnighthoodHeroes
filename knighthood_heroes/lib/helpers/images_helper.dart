import 'package:knighthood_heroes/data/enums.dart';

class ImagesHelper {
  static String getIconImagePath(EImageIcons requestedImage) {
    return switch (requestedImage) {
      EImageIcons.none => 'null',
      EImageIcons.explore => 'assets/images/icons/explore_transparent.png',
      EImageIcons.swords => 'assets/images/icons/swords_transparent.png',
    };
  }
}
