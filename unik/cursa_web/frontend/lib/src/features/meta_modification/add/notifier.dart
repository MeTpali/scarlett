import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/meta/meta_model.dart';
import '../../../models/meta_modification/add_meta_model/add_meta_model.dart';
import '../../../repositories/meta_repo.dart';
import '../../../services/meta_service.dart';

class AddMetaNotifier extends StateNotifier<AddMetaModel> {
  final MetaService _metaService;
  final MetaRepo _metaRepo;
  AddMetaNotifier({
    required MetaService metaService,
    required MetaRepo metaRepo,
  })  : _metaService = metaService,
        _metaRepo = metaRepo,
        super(const AddMetaModel());

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

  Future<void> add() async {
    final meta = MetaModel(
      id: 0,
      winrate: state.winrate,
      matchesPlayed: state.matchesPlayed,
      disadvantage: state.disadvantage,
      hero1Id: state.hero1Id,
      hero2Id: state.hero2Id,
    );

    final reverseMeta = MetaModel(
      id: 0,
      winrate: (100 - double.parse(state.winrate)).toString(),
      matchesPlayed: state.matchesPlayed,
      disadvantage: ((-1) * double.parse(state.disadvantage)).toString(),
      hero1Id: state.hero2Id,
      hero2Id: state.hero1Id,
    );
    await _metaService.add(meta);
    await _metaService.add(reverseMeta);
    await _metaRepo.update();
  }
}
