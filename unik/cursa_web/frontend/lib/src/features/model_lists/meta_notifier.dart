import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/heroes/heroes.dart';
import '../../models/meta/meta.dart';
import '../../models/meta_list/meta_list_model.dart';
import '../../repositories/heroes_repo.dart';
import '../../repositories/meta_repo.dart';

class MetaListNotifier extends StateNotifier<MetaListModel> {
  final MetaRepo _metaRepo;
  final HeroesRepo _heroesRepo;
  StreamSubscription<Meta>? _metaSubscription;
  StreamSubscription<Heroes>? _heroesSubscription;
  MetaListNotifier({
    required MetaRepo metaRepo,
    required HeroesRepo heroesRepo,
  })  : _heroesRepo = heroesRepo,
        _metaRepo = metaRepo,
        super(const MetaListModel(list: []));

  void init() {
    _metaSubscription ??= _metaRepo.stream.listen(onMetaEvent);
    _heroesSubscription ??= _heroesRepo.stream.listen(onHeroesEvent);
    buildMeta(_heroesRepo.heroes, _metaRepo.meta);
  }

  void onMetaEvent(Meta meta) => buildMeta(_heroesRepo.heroes, meta);

  void onHeroesEvent(Heroes heroes) => buildMeta(heroes, _metaRepo.meta);

  void buildMeta(Heroes heroes, Meta meta) {
    final newList = <MetaListRate>[];
    for (final rate in meta.meta) {
      final hero1 =
          heroes.heroes.where((hero) => hero.id == rate.hero1Id).firstOrNull;
      final hero2 =
          heroes.heroes.where((hero) => hero.id == rate.hero2Id).firstOrNull;

      if (hero1 == null || hero2 == null) {
        continue;
      }
      final newRate = MetaListRate(
        id: rate.id,
        winrate: rate.winrate,
        matchesPlayed: rate.matchesPlayed,
        disadvantage: rate.disadvantage,
        hero1: hero1.name,
        hero2: hero2.name,
      );

      newList.add(newRate);
    }

    state = MetaListModel(list: newList);
  }

  @override
  Future<void> dispose() async {
    await _heroesSubscription?.cancel();
    await _metaSubscription?.cancel();
    super.dispose();
  }
}
