import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/heroes_data.dart';
import 'package:knighthood_heroes/general/special_container.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/helpers/navigation.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/screens/credits.dart';
import 'package:knighthood_heroes/widgets/filter_options/filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/heroes_list.dart';
import 'package:knighthood_heroes/widgets/main_drawer.dart';
import 'package:knighthood_heroes/widgets/sort_options.dart';

const VisualDensity kVisualDensity = VisualDensity(horizontal: -4, vertical: 0);

List<KnighthoodHero> filterHeroes(HeroesFilterOptions filterOptions, List<KnighthoodHero> heroes) {
  List<KnighthoodHero> filteredHeroes = List.of(heroes);
  filteredHeroes = filteredHeroes
      .where((hero) =>
          (filterOptions.heroClass == EHeroClass.none || filterOptions.heroClass == hero.heroClass) &&
          (filterOptions.heroType == EHeroType.none || hero.heroType == filterOptions.heroType) &&
          (filterOptions.rarity == ERarity.none || hero.rarity == filterOptions.rarity) &&
          (filterOptions.enemyType == EEnemyType.none || hero.strongVs == filterOptions.enemyType) &&
          (filterOptions.baseSkillClass == ESkillClass.none ||
              hero.baseSkill.skillClass == filterOptions.baseSkillClass) &&
          (filterOptions.baseSkillStrongVsDebuff == ESkillDebuff.none ||
              hero.baseSkill.strongVsDebuff == filterOptions.baseSkillStrongVsDebuff) &&
          (filterOptions.baseSkillChanceToDebuff == ESkillDebuff.none ||
              hero.baseSkill.chanceTo == filterOptions.baseSkillChanceToDebuff) &&
          (filterOptions.baseSkillEffect == ESkillEffect.none ||
              hero.baseSkill.skillEffects.contains(filterOptions.baseSkillEffect)) &&
          (filterOptions.baseSkillTarget == ESkillEffect.none ||
              hero.baseSkill.skillEffects.contains(filterOptions.baseSkillTarget)) &&
          (filterOptions.rageSkillClass == ESkillClass.none ||
              hero.rageSkill.skillClass == filterOptions.rageSkillClass) &&
          (filterOptions.rageSkillStrongVsDebuff == ESkillDebuff.none ||
              hero.rageSkill.strongVsDebuff == filterOptions.rageSkillStrongVsDebuff) &&
          (filterOptions.rageSkillChanceToDebuff == ESkillDebuff.none ||
              hero.rageSkill.chanceTo == filterOptions.rageSkillChanceToDebuff) &&
          (filterOptions.rageSkillEffect == ESkillEffect.none ||
              hero.rageSkill.skillEffects.contains(filterOptions.rageSkillEffect)) &&
          (filterOptions.rageSkillTarget == ESkillEffect.none ||
              hero.rageSkill.skillEffects.contains(filterOptions.rageSkillTarget)))
      .toList();

  return filteredHeroes;
}

class Heroes extends StatefulWidget {
  const Heroes({super.key});

  @override
  State<Heroes> createState() => _HeroesState();
}

class _HeroesState extends State<Heroes> {
  List<KnighthoodHero> heroes = List.of(getHeroes);
  HeroesFilterOptions options = const HeroesFilterOptions();
  ESortType currentSortType = ESortType.nameAZ;

  @override
  Widget build(BuildContext context) {
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

    void setFilterOptions(HeroesFilterOptions filterOptions) {
      setState(() => options = filterOptions);
      heroes = filterHeroes(filterOptions, getHeroes);
      sortHeroes(currentSortType);
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
                  TextRoundedWithBackground(
                    'Knighthood Heroes ${heroes.length}',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    textColor: appBarTextColor,
                    horizontalPadding: 10,
                  ),
                  // const SizedBox(width: 5),
                  // Text(
                  //   '${heroes.length}',
                  //   style: const TextStyle(color: appBarTextColor, fontSize: 20),
                  // ),
                ],
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: false,
              iconTheme: const IconThemeData(color: Colors.white),
              actions: [
                IconButton(
                  visualDensity: kVisualDensity,
                  icon: const Icon(Icons.filter_alt, color: appBarTextColor),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FilterOptions(setFilterOptions),
                    ),
                  ),
                ),
                IconButton(
                  visualDensity: kVisualDensity,
                  onPressed: () {
                    setFilterOptions(const HeroesFilterOptions());
                    sortHeroes(ESortType.nameAZ);
                  },
                  icon: const Icon(Icons.autorenew_rounded, color: appBarTextColor),
                ),
                IconButton(
                    visualDensity: kVisualDensity,
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Credits(),
                          ),
                        ),
                    icon: const Icon(Icons.badge, color: appBarTextColor)),
              ],
            ),
          ],
        ),
      ),
      drawer: MainDrawer((screenId) => Navigation.setScreen(context, screenId)),
      body: Center(
        child: SpecialContainer.image(
          imagePath: ImagesHelper.getBackgroundImagePath(EBackground.blue),
          // imagePath: ImagesHelper.getBackgroundImagePath(EBackground.forge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SortOptions(sortHeroes, sortType: currentSortType),
              Expanded(child: HeroesList(heroes)),
            ],
          ),
        ),
      ),
    );
  }
}
