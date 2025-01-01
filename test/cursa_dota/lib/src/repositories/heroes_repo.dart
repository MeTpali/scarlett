import 'dart:async';

import 'package:injectable/injectable.dart';

import '../models/heroes/heroes.dart';
import '../services/heroes_service.dart';

@singleton
class HeroesRepo {
  final HeroesService _heroesService;
  final StreamController<Heroes> _controller;

  HeroesRepo({
    required HeroesService heroesService,
  })  : _heroesService = heroesService,
        _controller = StreamController.broadcast();

  @postConstruct
  void init() => unawaited(update());

  Stream<Heroes> get stream => _controller.stream;
  Heroes _heroes = const Heroes(heroes: []);
  Heroes get heroes => _heroes;

  Future<void> update() async {
    try {
      final heroes = await _heroesService.getAll();
      _controller.sink.add(heroes);
      _heroes = heroes;
    } catch (e) {
      print(e);
    }
  }
}
