import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

class HeroesList extends StatelessWidget {
  const HeroesList(this.filterOptions, this.heroes, {super.key});

  final HeroesFilterOptions filterOptions;
  final List<KnighthoodHero> heroes;

  @override
  Widget build(BuildContext context) {
    List<KnighthoodHero> filterHeroes() {
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

    List<KnighthoodHero> filteredHeroes = filterHeroes();

    if (filteredHeroes.isNotEmpty) {
      return ListView.builder(
          itemCount: filteredHeroes.length,
          itemBuilder: (context, index) {
            return HeroCard(filteredHeroes[index]);
          });
    } else {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: TextRoundedWithBackground(
                'No heroes mathing filter criteria found.',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                horizontalPadding: 40,
              ),
            ),
          ),
        ],
      );
    }
  }
}
