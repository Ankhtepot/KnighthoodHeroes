import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer(this.setScreen, {super.key});

  final Function setScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  const Color.fromARGB(255, 100, 211, 255),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
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
                    Text(
                      'Knighthood Heroes',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ],
                ),
                Text(
                  'Tools',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          // Drawer Body
          ListTile(
            leading: Image.asset(
              ImagesHelper.getIconImagePath(EImageIcons.swords),
              width: 24,
              height: 24,
            ),
            title: const Text('Weapon Crafting'),
            onTap: () => setScreen(EScreens.weapons),
          ),
        ],
      ),
    );
  }
}
