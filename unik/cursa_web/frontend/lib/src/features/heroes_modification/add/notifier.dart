import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/add_hero_model/add_hero_model.dart';
import '../../../models/heroes/hero_model.dart';
import '../../../repositories/heroes_repo.dart';
import '../../../services/heroes_service.dart';

class AddHeroNotifier extends StateNotifier<AddHeroModel> {
  final HeroesService _heroesService;
  final HeroesRepo _heroesRepo;
  AddHeroNotifier(
      {required HeroesService heroesService, required HeroesRepo heroesRepo})
      : _heroesService = heroesService,
        _heroesRepo = heroesRepo,
        super(const AddHeroModel());

  void updateName(String value) {
    final newState = state.copyWith(name: value);
    state = newState;
  }

  void updateIcon(String value) {
    final newState = state.copyWith(icon: value);
    state = newState;
  }

  Future<void> add() async {
    final hero = HeroModel(id: 0, name: state.name, icon: state.icon);
    await _heroesService.add(hero);
    await _heroesRepo.update();
  }

  // Future<void> updateById() async {
  //   await _heroesService.add(state);
  //   await _heroesRepo.update();
  // }

  // Future<void> remove(int id) async {
  //   await _heroesService.deleteById(id);
  //   await _heroesRepo.update();
  // }
}
