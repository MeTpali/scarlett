import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/meta/meta_model.dart';
import '../../../repositories/meta_repo.dart';
import '../../../services/meta_service.dart';

class UpdateMetaNotifier extends StateNotifier<MetaModel> {
  final MetaService _metaService;
  final MetaRepo _metaRepo;
  UpdateMetaNotifier({
    required MetaService metaService,
    required MetaRepo metaRepo,
  })  : _metaService = metaService,
        _metaRepo = metaRepo,
        super(
          const MetaModel(
            id: 0,
            winrate: '',
            matchesPlayed: 0,
            disadvantage: '',
            hero1Id: 0,
            hero2Id: 0,
          ),
        );

  void updateId(String value) {
    final id = value.isEmpty ? 0 : int.parse(value);
    final newState = state.copyWith(id: id);
    state = newState;
  }

  void updateFirstHeroId(String value) {
    final id = value.isEmpty ? 0 : int.parse(value);
    final newState = state.copyWith(hero1Id: id);
    state = newState;
  }

  void updateSecondHeroId(String value) {
    final id = value.isEmpty ? 0 : int.parse(value);
    final newState = state.copyWith(hero2Id: id);
    state = newState;
  }

  void updateDisadvantage(String value) {
    final newState = state.copyWith(disadvantage: value);
    state = newState;
  }

  void updateWinrate(String value) {
    final newState = state.copyWith(winrate: value);
    state = newState;
  }

  void updateMatchesPlayed(String value) {
    final matchesPlayed = value.isEmpty ? 0 : int.parse(value);
    final newState = state.copyWith(matchesPlayed: matchesPlayed);
    state = newState;
  }

  Future<void> update() async {
    await _metaService.updateById(state);
    await _metaRepo.update();
  }
}
