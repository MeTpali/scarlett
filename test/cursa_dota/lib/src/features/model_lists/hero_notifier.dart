import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/hero_picker_model/hero_picker_model.dart';
import '../../models/heroes/hero_model.dart';
import '../../models/heroes/heroes.dart';
import '../../repositories/heroes_repo.dart';

class HeroPickerNotifier extends StateNotifier<HeroPickerModel> {
  final HeroesRepo _heroesRepo;
  StreamSubscription<Heroes>? _subscription;
  HeroPickerNotifier({
    required HeroesRepo heroesRepo,
  })  : _heroesRepo = heroesRepo,
        super(
          HeroPickerModel(
              sortType: SortType.id, heroes: heroesRepo.heroes.heroes),
        );

  void init() => _subscription ??= _heroesRepo.stream.listen(onEvent);

  void onEvent(Heroes heroes) {
    final newState = state.copyWith(heroes: heroes.heroes);
    state = newState;
  }

  void filter(String value) {
    final newHeroesList = _heroesRepo.heroes.heroes
        .where(
          (hero) => hero.name.contains(value),
        )
        .toList();
    final finalList = _sort(state.sortType, newHeroesList);
    final newState = state.copyWith(heroes: finalList);
    state = newState;
  }

  void setSortType(SortType sortType) {
    final newHeroesList = _sort(sortType, state.heroes);
    final newState = state.copyWith(sortType: sortType, heroes: newHeroesList);
    state = newState;
  }

  List<HeroModel> _sort(SortType sortType, List<HeroModel> list) {
    final newHeroesList = List<HeroModel>.from(list, growable: true);
    switch (sortType) {
      case SortType.alphAZ:
        newHeroesList.sort((a, b) => a.name.compareTo(b.name));
      case SortType.alphZA:
        newHeroesList.sort((a, b) => b.name.compareTo(a.name));
      case SortType.id:
        newHeroesList.sort((a, b) => a.id.compareTo(b.id));
    }
    return newHeroesList;
  }

  @override
  Future<void> dispose() async {
    await _subscription?.cancel();
    super.dispose();
  }
}
