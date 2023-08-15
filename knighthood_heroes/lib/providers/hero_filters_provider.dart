import 'package:knighthood_heroes/data/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';
import 'package:knighthood_heroes/models/knighthood_hero.dart';
import 'package:knighthood_heroes/providers/heroes_provider.dart';

const kDefaultHeroesFilter = HeroesFilterOptions();

final heroesFilterProvider =
    StateNotifierProvider<HeroesFilterNotifier, HeroesFilterOptions>((ref) => HeroesFilterNotifier());

class HeroesFilterNotifier extends StateNotifier<HeroesFilterOptions> {
  HeroesFilterNotifier() : super(kDefaultHeroesFilter);

  void resetFilters() => state = kDefaultHeroesFilter;

  void setFilters(HeroesFilterOptions filters) {
    state = filters;
  }

  void setHeroClass(EHeroClass heroClass) => state = state.withHeroClass(heroClass);
  void setHeroType(EHeroType heroType) => state = state.withHeroType(heroType);
  void setRarity(ERarity rarity) => state = state.withRarity(rarity);
  void setEnemyType(EEnemyType enemyType) => state = state.withEnemyType(enemyType);
  void setBaseSkillClass(ESkillClass baseSkillClass) => state = state.withBaseSkillClass(baseSkillClass);
  void setBaseSkillTarget(ESkillEffect baseSkillTarget) => state = state.withBaseSkillTarget(baseSkillTarget);
  void setBaseSkillEffect(ESkillEffect baseSkillEffect) => state = state.withBaseSkillEffect(baseSkillEffect);
  void setBaseSkillChanceToDebuff(ESkillDebuff baseSkillChanceToDebuff) =>
      state = state.withBaseSkillChanceToDebuff(baseSkillChanceToDebuff);
  void setBaseSkillStrongVsDebuff(ESkillDebuff baseSkillStrongVsDebuff) =>
      state = state.withBaseSkillStrongVsDebuff(baseSkillStrongVsDebuff);
  void setRageSkillClass(ESkillClass rageSkillClass) => state = state.withRageSkillClass(rageSkillClass);
  void setRageSkillTarget(ESkillEffect rageSkillTarget) => state = state.withRageSkillTarget(rageSkillTarget);
  void setRageSkillEffect(ESkillEffect rageSkillEffect) => state = state.withRageSkillEffect(rageSkillEffect);
  void setRageSkillChanceToDebuff(ESkillDebuff rageSkillChanceToDebuff) =>
      state = state.withRageSkillChanceToDebuff(rageSkillChanceToDebuff);
  void setRageSkillStrongVsDebuff(ESkillDebuff rageSkillStrongVsDebuff) =>
      state = state.withRageSkillStrongVsDebuff(rageSkillStrongVsDebuff);
}

final filteredHeroesProvider = Provider<FilteredHeroesProvider>((ref) {
  return FilteredHeroesProvider(ref);
});

class FilteredHeroesProvider {
  FilteredHeroesProvider(this.ref) : currentFilter = ref.watch(heroesFilterProvider), heroes = ref.watch(heroesProvider);

  final ProviderRef ref;
  final HeroesFilterOptions currentFilter;
  final List<KnighthoodHero> heroes;

  List<KnighthoodHero> get exclusive {
    return heroes.where((hero) => (currentFilter.heroClass == EHeroClass.none || currentFilter.heroClass == hero.heroClass) &&
              (currentFilter.heroType == EHeroType.none || hero.heroType == currentFilter.heroType) &&
              (currentFilter.rarity == ERarity.none || hero.rarity == currentFilter.rarity) &&
              (currentFilter.enemyType == EEnemyType.none || hero.strongVs == currentFilter.enemyType) &&
              (currentFilter.baseSkillClass == ESkillClass.none ||
                  hero.baseSkill.skillClass == currentFilter.baseSkillClass) &&
              (currentFilter.baseSkillStrongVsDebuff == ESkillDebuff.none ||
                  hero.baseSkill.strongVsDebuff == currentFilter.baseSkillStrongVsDebuff) &&
              (currentFilter.baseSkillChanceToDebuff == ESkillDebuff.none ||
                  hero.baseSkill.chanceTo == currentFilter.baseSkillChanceToDebuff) &&
              (currentFilter.baseSkillEffect == ESkillEffect.none ||
                  hero.baseSkill.skillEffects.contains(currentFilter.baseSkillEffect)) &&
              (currentFilter.baseSkillTarget == ESkillEffect.none ||
                  hero.baseSkill.skillEffects.contains(currentFilter.baseSkillTarget)) &&
              (currentFilter.rageSkillClass == ESkillClass.none ||
                  hero.rageSkill.skillClass == currentFilter.rageSkillClass) &&
              (currentFilter.rageSkillStrongVsDebuff == ESkillDebuff.none ||
                  hero.rageSkill.strongVsDebuff == currentFilter.rageSkillStrongVsDebuff) &&
              (currentFilter.rageSkillChanceToDebuff == ESkillDebuff.none ||
                  hero.rageSkill.chanceTo == currentFilter.rageSkillChanceToDebuff) &&
              (currentFilter.rageSkillEffect == ESkillEffect.none ||
                  hero.rageSkill.skillEffects.contains(currentFilter.rageSkillEffect)) &&
              (currentFilter.rageSkillTarget == ESkillEffect.none ||
                  hero.rageSkill.skillEffects.contains(currentFilter.rageSkillTarget))).toList();
  }
}
