import 'package:knighthood_heroes/data/enums.dart';

class ImagesHelper {
  static String getIconImagePath(EImageIcons requestedImage) {
    return switch (requestedImage) {
      EImageIcons.none => 'null',
      EImageIcons.explore => 'assets/images/icons/explore_transparent.png',
      EImageIcons.swords => 'assets/images/icons/swords_transparent.png',
      EImageIcons.group => 'assets/images/icons/group_transparent.png',
      EImageIcons.sword => 'assets/images/icons/sword.png',
      EImageIcons.axe => 'assets/images/icons/axe.png',
      EImageIcons.hammer => 'assets/images/icons/hammer.png',
    };
  }

  static String getWeaponIconPath(EWeaponType weaponType) => switch (weaponType) {
        EWeaponType.none => ImagesHelper.getIconImagePath(EImageIcons.none),
        EWeaponType.sword => ImagesHelper.getIconImagePath(EImageIcons.sword),
        EWeaponType.axe => ImagesHelper.getIconImagePath(EImageIcons.axe),
        EWeaponType.hammer => ImagesHelper.getIconImagePath(EImageIcons.hammer),
      };

  static String getBackgroundImagePath(EBackground background) => switch (background) {
        EBackground.none => 'null',
        EBackground.blue => 'assets/images/backgrounds/blue_background.png',
        EBackground.forge => 'assets/images/backgrounds/forge_background.png',
      };
}
