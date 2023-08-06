import 'package:knighthood_heroes/data/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knighthood_heroes/models/heroes_filter_options.dart';

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
