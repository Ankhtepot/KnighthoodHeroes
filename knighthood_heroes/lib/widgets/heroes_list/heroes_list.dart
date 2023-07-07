import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card.dart';
import 'package:knighthood_heroes/widgets/heroes_list/hero_card_detailed.dart';
import 'package:knighthood_heroes/widgets/text_rounded_with_background.dart';

class HeroesList extends StatefulWidget {
  const HeroesList(this.filterOptions, this.heroes, {super.key});

  final HeroesFilterOptions filterOptions;
  final List<KnighthoodHero> heroes;

  @override
  State<HeroesList> createState() => _HeroesListState();
}

class _HeroesListState extends State<HeroesList> {
  List<bool> expandedStates = [];

  @override
  void initState() {
    super.initState();
    expandedStates = List.filled(widget.heroes.length, false);
  }

  void toggleExpansion(int index) {
    setState(() {
      expandedStates[index] = !expandedStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    List<KnighthoodHero> filterHeroes() {
      List<KnighthoodHero> filteredHeroes = List.of(widget.heroes);
      filteredHeroes = filteredHeroes
          .where((hero) =>
              (widget.filterOptions.heroClass == EHeroClass.none || widget.filterOptions.heroClass == hero.heroClass) &&
              (widget.filterOptions.heroType == EHeroType.none || hero.heroType == widget.filterOptions.heroType) &&
              (widget.filterOptions.rarity == ERarity.none || hero.rarity == widget.filterOptions.rarity) &&
              (widget.filterOptions.enemyType == EEnemyType.none || hero.strongVs == widget.filterOptions.enemyType) &&
              (widget.filterOptions.baseSkillClass == ESkillClass.none ||
                  hero.baseSkill.skillClass == widget.filterOptions.baseSkillClass) &&
              (widget.filterOptions.baseSkillStrongVsDebuff == ESkillDebuff.none ||
                  hero.baseSkill.strongVsDebuff == widget.filterOptions.baseSkillStrongVsDebuff) &&
              (widget.filterOptions.baseSkillChanceToDebuff == ESkillDebuff.none ||
                  hero.baseSkill.chanceTo == widget.filterOptions.baseSkillChanceToDebuff) &&
              (widget.filterOptions.baseSkillEffect == ESkillEffect.none ||
                  hero.baseSkill.skillEffects.contains(widget.filterOptions.baseSkillEffect)) &&
              (widget.filterOptions.baseSkillTarget == ESkillEffect.none ||
                  hero.baseSkill.skillEffects.contains(widget.filterOptions.baseSkillTarget)) &&
              (widget.filterOptions.rageSkillClass == ESkillClass.none ||
                  hero.rageSkill.skillClass == widget.filterOptions.rageSkillClass) &&
              (widget.filterOptions.rageSkillStrongVsDebuff == ESkillDebuff.none ||
                  hero.rageSkill.strongVsDebuff == widget.filterOptions.rageSkillStrongVsDebuff) &&
              (widget.filterOptions.rageSkillChanceToDebuff == ESkillDebuff.none ||
                  hero.rageSkill.chanceTo == widget.filterOptions.rageSkillChanceToDebuff) &&
              (widget.filterOptions.rageSkillEffect == ESkillEffect.none ||
                  hero.rageSkill.skillEffects.contains(widget.filterOptions.rageSkillEffect)) &&
              (widget.filterOptions.rageSkillTarget == ESkillEffect.none ||
                  hero.rageSkill.skillEffects.contains(widget.filterOptions.rageSkillTarget)))
          .toList();

      return filteredHeroes;
    }

    List<KnighthoodHero> filteredHeroes = filterHeroes();

    if (filteredHeroes.isNotEmpty) {
      return ListView.builder(
        itemCount: filteredHeroes.length,
        itemBuilder: (context, index) {
          final isExpanded = expandedStates[index];
          return GestureDetector(
            onTap: () {
              toggleExpansion(index);
            },
            child: isExpanded ? HeroCardDetailed(filteredHeroes[index]) : HeroCard(filteredHeroes[index]),
          );
        },
      );
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
