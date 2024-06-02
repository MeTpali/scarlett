import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/heroes/hero_model.dart';
import '../../../models/update_hero_model/update_hero_model.dart';
import '../../../repositories/heroes_repo.dart';
import '../../../services/heroes_service.dart';

class UpdateHeroNotifier extends StateNotifier<UpdateHeroModel> {
  final HeroesService _heroesService;
  final HeroesRepo _heroesRepo;
  UpdateHeroNotifier(
      {required HeroesService heroesService, required HeroesRepo heroesRepo})
      : _heroesService = heroesService,
        _heroesRepo = heroesRepo,
        super(const UpdateHeroModel(id: 0, name: '', icon: ''));

  void chooseHero(HeroModel value) {
    final newState = state.copyWith(id: value.id, hero: value);
    state = newState;
  }

  void updateName(String value) {
    final newState = state.copyWith(name: value);
    state = newState;
  }

  void updateIcon(String value) {
    final newState = state.copyWith(icon: value);
    state = newState;
  }

  Future<void> updateHero() async {
    final hero = HeroModel(id: state.id, name: state.name, icon: state.icon);
    await _heroesService.updateById(hero);
    await _heroesRepo.update();
  }

  // Future<void> remove(int id) async {
  //   await _heroesService.deleteById(id);
  //   await _heroesRepo.update();
  // }
}
