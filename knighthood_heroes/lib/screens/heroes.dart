import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/special_container.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/helpers/navigation.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/providers/hero_filters_provider.dart';
import 'package:knighthood_heroes/providers/heroes_provider.dart';
import 'package:knighthood_heroes/screens/credits.dart';
import 'package:knighthood_heroes/widgets/action_icon.dart';
import 'package:knighthood_heroes/screens/filter_options_screen.dart';
import 'package:knighthood_heroes/widgets/heroes_list/heroes_list.dart';
import 'package:knighthood_heroes/widgets/main_drawer.dart';
import 'package:knighthood_heroes/widgets/heroes_screen/sort_options.dart';

const VisualDensity kVisualDensity = VisualDensity(horizontal: -4, vertical: 0);

class Heroes extends ConsumerStatefulWidget {
  const Heroes({super.key});

  @override
  ConsumerState<Heroes> createState() => _HeroesState();
}

class _HeroesState extends ConsumerState<Heroes> {
  ESortType currentSortType = ESortType.nameAZ;

  @override
  Widget build(BuildContext context) {
    final HeroesFilterOptions filterOptions = ref.watch(heroesFilterProvider);
    final heroes = ref.watch(heroesProvider);

    // List<KnighthoodHero> getFilteredHeroes() {
    //   List<KnighthoodHero> filteredHeroes = heroes
    //       .where((hero) =>
    //           (filterOptions.heroClass == EHeroClass.none || filterOptions.heroClass == hero.heroClass) &&
    //           (filterOptions.heroType == EHeroType.none || hero.heroType == filterOptions.heroType) &&
    //           (filterOptions.rarity == ERarity.none || hero.rarity == filterOptions.rarity) &&
    //           (filterOptions.enemyType == EEnemyType.none || hero.strongVs == filterOptions.enemyType) &&
    //           (filterOptions.baseSkillClass == ESkillClass.none ||
    //               hero.baseSkill.skillClass == filterOptions.baseSkillClass) &&
    //           (filterOptions.baseSkillStrongVsDebuff == ESkillDebuff.none ||
    //               hero.baseSkill.strongVsDebuff == filterOptions.baseSkillStrongVsDebuff) &&
    //           (filterOptions.baseSkillChanceToDebuff == ESkillDebuff.none ||
    //               hero.baseSkill.chanceTo == filterOptions.baseSkillChanceToDebuff) &&
    //           (filterOptions.baseSkillEffect == ESkillEffect.none ||
    //               hero.baseSkill.skillEffects.contains(filterOptions.baseSkillEffect)) &&
    //           (filterOptions.baseSkillTarget == ESkillEffect.none ||
    //               hero.baseSkill.skillEffects.contains(filterOptions.baseSkillTarget)) &&
    //           (filterOptions.rageSkillClass == ESkillClass.none ||
    //               hero.rageSkill.skillClass == filterOptions.rageSkillClass) &&
    //           (filterOptions.rageSkillStrongVsDebuff == ESkillDebuff.none ||
    //               hero.rageSkill.strongVsDebuff == filterOptions.rageSkillStrongVsDebuff) &&
    //           (filterOptions.rageSkillChanceToDebuff == ESkillDebuff.none ||
    //               hero.rageSkill.chanceTo == filterOptions.rageSkillChanceToDebuff) &&
    //           (filterOptions.rageSkillEffect == ESkillEffect.none ||
    //               hero.rageSkill.skillEffects.contains(filterOptions.rageSkillEffect)) &&
    //           (filterOptions.rageSkillTarget == ESkillEffect.none ||
    //               hero.rageSkill.skillEffects.contains(filterOptions.rageSkillTarget)))
    //       .toList();

    //   return filteredHeroes;
    // }

    void sortHeroes(ESortType? newSortType) {
      setState(() {
        currentSortType = newSortType!;

        return switch (newSortType) {
          ESortType.none => {},
          ESortType.nameAZ => heroes.sort((a, b) => a.name.compareTo(b.name)),
          ESortType.nameZA => heroes.sort((a, b) => b.name.compareTo(a.name)),
          ESortType.rarityAsc => heroes.sort((a, b) => a.rarity.index.compareTo(b.rarity.index)),
          ESortType.rarityDesc => heroes.sort((a, b) => b.rarity.index.compareTo(a.rarity.index)),
          ESortType.heroClassAZ => heroes.sort((a, b) => a.heroClass.index.compareTo(b.heroClass.index)),
          ESortType.heroClassZA => heroes.sort((a, b) => b.heroClass.index.compareTo(a.heroClass.index)),
          ESortType.heroTypeAZ => heroes.sort((a, b) => a.heroType.index.compareTo(b.heroType.index)),
          ESortType.heroTypeZA => heroes.sort((a, b) => b.heroType.index.compareTo(a.heroType.index)),
          ESortType.enemyType => heroes.sort((a, b) => a.strongVs.index.compareTo(b.strongVs.index))
        };
      });
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Stack(
          children: [
            SpecialContainer.image(
              imagePath: ImagesHelper.getBackgroundImagePath(EBackground.study),
              oppacity: 1,
            ),
            AppBar(
              title: Row(
                children: [
                  TextRoundedWithBackground.header(
                    'Heroes (${heroes.length})',
                    horizontalPadding: 15,
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: false,
              iconTheme: const IconThemeData(color: Colors.white),
              actions: [
                Transform.scale(
                  scale: 0.8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: knighhoodTitleColor.withOpacity(1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        ActionIcon(Icons.filter_alt, onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FilterOptionsScreen(),
                            ),
                          );
                          // Delay reseting filters so screen wont flicker
                          await Future.delayed(const Duration(milliseconds: 20));
                          ref.read(heroesFilterProvider.notifier).resetFilters();
                        }),
                        const SizedBox(width: 15),
                        ActionIcon(Icons.autorenew_rounded, onTap: () {
                          ref.read(heroesFilterProvider.notifier).resetFilters();
                          sortHeroes(ESortType.nameAZ);
                        }),
                        const SizedBox(width: 15),
                        ActionIcon(Icons.badge, onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Credits(),
                            ),
                          );
                        }),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: MainDrawer((screenId) => Navigation.setScreen(context, screenId)),
      body: Center(
        child: SpecialContainer.image(
          imagePath: ImagesHelper.getBackgroundImagePathByRarity(filterOptions.rarity),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SortOptions(sortHeroes, sortType: currentSortType),
              Expanded(child: HeroesList()),
            ],
          ),
        ),
      ),
    );
  }
}
