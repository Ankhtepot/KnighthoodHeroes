import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateNotifierProvider<HeroesExpandedStateProvider, List<bool>> heroesExpandedStatesProvider = StateNotifierProvider((ref) => HeroesExpandedStateProvider());

class HeroesExpandedStateProvider extends StateNotifier<List<bool>> {
  HeroesExpandedStateProvider() :super([]);

  void toggleExpansion(int index) {
    state[index] = !state[index];
  }

  void reset() {
    state = List.filled(state.length, false);
  }

  void initState(int length) {
    state = List.filled(length, false);
  }
}