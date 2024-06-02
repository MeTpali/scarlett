import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/delete_hero_model/delete_hero_model.dart';
import '../../../models/heroes/hero_model.dart';
import '../../../repositories/heroes_repo.dart';
import '../../../services/heroes_service.dart';

class DeleteMetaNotifier extends StateNotifier<DeleteHeroModel> {
  final HeroesService _heroesService;
  final HeroesRepo _heroesRepo;
  DeleteMetaNotifier(
      {required HeroesService heroesService, required HeroesRepo heroesRepo})
      : _heroesService = heroesService,
        _heroesRepo = heroesRepo,
        super(const DeleteHeroModel());

  void chooseHero(HeroModel value) {
    final newState = state.copyWith(hero: value);
    state = newState;
  }

  Future<void> deleteHero() async {
    if (state.hero == null) {
      return;
    }

    await _heroesService.deleteById(state.hero!.id);
    await _heroesRepo.update();
  }
}
