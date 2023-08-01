import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';

const double kIconSize = 32;

class MainDrawer extends StatelessWidget {
  const MainDrawer(this.setScreen, {super.key});

  final Function setScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: knighthoodContentColor,
        child: ListView(
          children: [
            Container(
              color: knighhoodTitleColor,
              child: DrawerHeader(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          ImagesHelper.getIconImagePath(EImageIcons.explore),
                          width: 48,
                          height: 48,
                        ),
                        const SizedBox(width: 18),
                        const TextRoundedWithBackground.header('Heroe\'s'),
                      ],
                    ),
                    const TextRoundedWithBackground.header('Tools'),
                  ],
                ),
              ),
            ),
            // Drawer Body
            ListTile(
              leading: Image.asset(
                ImagesHelper.getIconImagePath(EImageIcons.group),
                width: kIconSize,
                height: kIconSize,
              ),
              title: Text('Heroes', style: normalTextStyle(fontSize: 24)),
              onTap: () => setScreen(EScreens.heroes),
            ),
            ListTile(
              leading: Image.asset(
                ImagesHelper.getIconImagePath(EImageIcons.swords),
                width: kIconSize,
                height: kIconSize,
              ),
              title: Text(
                'Weapons Crafting',
                style: normalTextStyle(fontSize: 24),
              ),
              onTap: () => setScreen(EScreens.weapons),
            ),
          ],
        ),
      ),
    );
  }
}
