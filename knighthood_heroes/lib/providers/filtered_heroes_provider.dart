import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/providers/hero_filters_provider.dart';
import 'package:knighthood_heroes/providers/heroes_provider.dart';

final filteredHeroesProvider = Provider<FilteredHeroesProvider>((ref) => FilteredHeroesProvider(ref));

class FilteredHeroesProvider {
  FilteredHeroesProvider(this.ref)
      : _currentFilter = ref.watch(heroesFilterProvider),
        _heroes = ref.watch(heroesProvider);

  final ProviderRef ref;
  final HeroesFilterOptions _currentFilter;
  final List<KnighthoodHero> _heroes;

  List<KnighthoodHero> get exclusive => _heroes
      .where((hero) =>
          (_currentFilter.heroClass == EHeroClass.none || _currentFilter.heroClass == hero.heroClass) &&
          (_currentFilter.heroType == EHeroType.none || hero.heroType == _currentFilter.heroType) &&
          (_currentFilter.rarity == ERarity.none || hero.rarity == _currentFilter.rarity) &&
          (_currentFilter.enemyType == EEnemyType.none || hero.strongVs == _currentFilter.enemyType) &&
          (_currentFilter.baseSkillClass == ESkillClass.none ||
              hero.baseSkill.skillClass == _currentFilter.baseSkillClass) &&
          (_currentFilter.baseSkillStrongVsDebuff == ESkillDebuff.none ||
              hero.baseSkill.strongVsDebuff == _currentFilter.baseSkillStrongVsDebuff) &&
          (_currentFilter.baseSkillChanceToDebuff == ESkillDebuff.none ||
              hero.baseSkill.chanceTo == _currentFilter.baseSkillChanceToDebuff) &&
          (_currentFilter.baseSkillEffect == ESkillEffect.none ||
              hero.baseSkill.skillEffects.contains(_currentFilter.baseSkillEffect)) &&
          (_currentFilter.baseSkillTarget == ESkillEffect.none ||
              hero.baseSkill.skillEffects.contains(_currentFilter.baseSkillTarget)) &&
          (_currentFilter.rageSkillClass == ESkillClass.none ||
              hero.rageSkill.skillClass == _currentFilter.rageSkillClass) &&
          (_currentFilter.rageSkillStrongVsDebuff == ESkillDebuff.none ||
              hero.rageSkill.strongVsDebuff == _currentFilter.rageSkillStrongVsDebuff) &&
          (_currentFilter.rageSkillChanceToDebuff == ESkillDebuff.none ||
              hero.rageSkill.chanceTo == _currentFilter.rageSkillChanceToDebuff) &&
          (_currentFilter.rageSkillEffect == ESkillEffect.none ||
              hero.rageSkill.skillEffects.contains(_currentFilter.rageSkillEffect)) &&
          (_currentFilter.rageSkillTarget == ESkillEffect.none ||
              hero.rageSkill.skillEffects.contains(_currentFilter.rageSkillTarget)))
      .toList();

  List<KnighthoodHero> get inclusive => _heroes
      .where((hero) =>
          (_currentFilter.heroClass != EHeroClass.none && _currentFilter.heroClass == hero.heroClass) ||
          (_currentFilter.heroType != EHeroType.none && hero.heroType == _currentFilter.heroType) ||
          (_currentFilter.rarity != ERarity.none && hero.rarity == _currentFilter.rarity) ||
          (_currentFilter.enemyType != EEnemyType.none && hero.strongVs == _currentFilter.enemyType) ||
          (_currentFilter.baseSkillClass != ESkillClass.none &&
              hero.baseSkill.skillClass == _currentFilter.baseSkillClass) ||
          (_currentFilter.baseSkillStrongVsDebuff != ESkillDebuff.none &&
              hero.baseSkill.strongVsDebuff == _currentFilter.baseSkillStrongVsDebuff) ||
          (_currentFilter.baseSkillChanceToDebuff != ESkillDebuff.none &&
              hero.baseSkill.chanceTo == _currentFilter.baseSkillChanceToDebuff) ||
          (_currentFilter.baseSkillEffect != ESkillEffect.none &&
              hero.baseSkill.skillEffects.contains(_currentFilter.baseSkillEffect)) ||
          (_currentFilter.baseSkillTarget != ESkillEffect.none &&
              hero.baseSkill.skillEffects.contains(_currentFilter.baseSkillTarget)) ||
          (_currentFilter.rageSkillClass != ESkillClass.none &&
              hero.rageSkill.skillClass == _currentFilter.rageSkillClass) ||
          (_currentFilter.rageSkillStrongVsDebuff != ESkillDebuff.none &&
              hero.rageSkill.strongVsDebuff == _currentFilter.rageSkillStrongVsDebuff) ||
          (_currentFilter.rageSkillChanceToDebuff != ESkillDebuff.none &&
              hero.rageSkill.chanceTo == _currentFilter.rageSkillChanceToDebuff) ||
          (_currentFilter.rageSkillEffect != ESkillEffect.none &&
              hero.rageSkill.skillEffects.contains(_currentFilter.rageSkillEffect)) ||
          (_currentFilter.rageSkillTarget != ESkillEffect.none &&
              hero.rageSkill.skillEffects.contains(_currentFilter.rageSkillTarget)))
      .toList();
}
