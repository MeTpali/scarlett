import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/heroes/hero_model.dart';
import '../../models/meta/meta_model.dart';
import '../../services/heroes_service.dart';
import '../../services/meta_service.dart';

class SexNotifier extends StateNotifier<int> {
  final HeroesService _heroesService;
  final MetaService _metaService;
  SexNotifier({
    required HeroesService heroesService,
    required MetaService metaService,
  })  : _heroesService = heroesService,
        _metaService = metaService,
        super(0);

  Future<void> letsGo() async {
    final heroes = await _heroesService.getAll();
    final sex =
        heroes.heroes.last.copyWith(name: 'puppet-master', icon: 'chevron');
    await _heroesService.deleteById(sex.id);
  }

  Future<void> haha() async {
    final meta = await _metaService.deleteById(2);
  }
}
