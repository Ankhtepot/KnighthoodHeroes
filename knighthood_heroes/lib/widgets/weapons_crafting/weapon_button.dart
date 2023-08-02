import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';

class WeaponButton extends StatelessWidget {
  const WeaponButton({
    super.key,
    required this.weaponType,
    required this.onTap,
    required this.isSelected,
  });

  final EWeaponType weaponType;
  final Function onTap;
  final bool isSelected;

  @override
  build(BuildContext context) {
    final bool isNone = weaponType == EWeaponType.none;

    return Expanded(
      child: ElevatedButton(
          onPressed: () => onTap(weaponType),
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? Colors.white : Colors.grey,
            padding: EdgeInsets.zero,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!isNone)
                Image.asset(
                  ImagesHelper.getWeaponIconPath(weaponType),
                  width: 30,
                  height: 30,
                  color: isSelected ? Colors.black : Colors.white,
                ),
              Text(
                isNone ? 'All types' : weaponType.toString().textFromEnumName(),
                style: commonTextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
