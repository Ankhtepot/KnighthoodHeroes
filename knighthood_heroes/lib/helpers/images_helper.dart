import 'package:knighthood_heroes/data/enums.dart';

String chanceIconPath = 'assets/images/skills/chance.png';
String strongVsIconPath = 'assets/images/skills/strongVs.png';

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

  static String getRarityBanner(ERarity rarity, {EOrientation orientation = EOrientation.horizontal}) {
    const String path = 'assets/images/rarity_banners/';

    final String orientationPath = switch (orientation) {
      EOrientation.horizontal => '_horizontal',
      EOrientation.vertical => '_vertical',
    };
    return switch (rarity) {
      ERarity.rare => '${path}rare$orientationPath.png',
      ERarity.epic => '${path}epic$orientationPath.png',
      ERarity.legendary => '${path}legendary$orientationPath.png',
      ERarity.unique => '${path}unique$orientationPath.png',
      ERarity.mythic => '${path}mythic$orientationPath.png',
      _ => '${path}common$orientationPath.png',
    };
  }

  static String getBackgroundImagePath(EBackground background) => switch (background) {
        EBackground.none => 'null',
        EBackground.green => 'assets/images/backgrounds/green_background.jpg',
        EBackground.blue => 'assets/images/backgrounds/blue_background.jpg',
        EBackground.violet => 'assets/images/backgrounds/violet_background.jpg',
        EBackground.yellow => 'assets/images/backgrounds/yellow_background.jpg',
        EBackground.forge => 'assets/images/backgrounds/forge_background.jpg',
        EBackground.knight => 'assets/images/backgrounds/knight_banner.jpg',
        EBackground.guildhall => 'assets/images/backgrounds/guildhall_background.jpg',
        EBackground.study => 'assets/images/backgrounds/study_background.jpg',
      };

  static String getBackgroundImagePathByRarity(ERarity rarity) => switch (rarity) {
        ERarity.rare => ImagesHelper.getBackgroundImagePath(EBackground.green),
        ERarity.legendary => ImagesHelper.getBackgroundImagePath(EBackground.violet),
        ERarity.unique => ImagesHelper.getBackgroundImagePath(EBackground.yellow),
        _ => ImagesHelper.getBackgroundImagePath(EBackground.blue),
      };
}
