import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/hero_rate_model/hero_rate_model.dart';
import '../../models/heroes/hero_model.dart';
import '../../models/heroes/heroes.dart';
import '../../models/pick/pick_model.dart';
import '../../repositories/heroes_repo.dart';
import '../../repositories/meta_repo.dart';

class PickNotifier extends StateNotifier<PickModel> {
  final HeroesRepo _heroesRepo;
  final MetaRepo _metaRepo;
  StreamSubscription<Heroes>? _subscription;
  PickNotifier({
    required HeroesRepo heroesRepo,
    required MetaRepo metaRepo,
  })  : _metaRepo = metaRepo,
        _heroesRepo = heroesRepo,
        super(const PickModel());

  void init() => _subscription ??= _heroesRepo.stream.listen(onEvent);

  void onEvent(Heroes heroes) {
    const newState = PickModel();
    state = newState;
  }

  void add(HeroModel hero, [bool isRadiant = true]) {
    final radiant = List<HeroRateModel>.from(state.radiant, growable: true);
    final dire = List<HeroRateModel>.from(state.dire, growable: true);

    if (radiant.where((element) => element.id == hero.id).isNotEmpty ||
        dire.where((element) => element.id == hero.id).isNotEmpty) {
      return;
    }

    final newHeroRate = HeroRateModel(
      id: hero.id,
      name: hero.name,
      url: hero.icon,
      rate: calcRate(hero.id, isRadiant),
    );

    if (isRadiant) {
      final newList = List<HeroRateModel>.from(state.radiant);
      newList.add(newHeroRate);
      final newState = state.copyWith(radiant: newList);
      state = newState;
      final newDire = recalc(dire, false);
      final newRecalcState = state.copyWith(dire: newDire);
      state = newRecalcState;
    } else {
      final newList = List<HeroRateModel>.from(state.dire);
      newList.add(newHeroRate);
      final newState = state.copyWith(dire: newList);
      state = newState;
      final newRadiant = recalc(radiant, true);
      final newRecalcState = state.copyWith(radiant: newRadiant);
      state = newRecalcState;
    }
  }

  List<HeroRateModel> recalc(List<HeroRateModel> list, bool isRadiant) {
    final newList = <HeroRateModel>[];
    for (final element in list) {
      final rate = calcRate(element.id, isRadiant);
      final newElement = element.copyWith(rate: rate);
      newList.add(newElement);
    }
    return newList;
  }

  double calcRate(int id, bool isRadiant) {
    final meta = _metaRepo.meta;
    final filtered = isRadiant
        ? state.dire
            .map((element) =>
                meta.meta
                    .where(
                      (metaModel) =>
                          metaModel.hero1Id == id &&
                          metaModel.hero2Id == element.id,
                    )
                    .firstOrNull
                    ?.disadvantage ??
                '0.0')
            .toList()
        : state.radiant
            .map((element) =>
                meta.meta
                    .where(
                      (metaModel) =>
                          metaModel.hero1Id == id &&
                          metaModel.hero2Id == element.id,
                    )
                    .firstOrNull
                    ?.disadvantage ??
                '0.0')
            .toList();
    final heroMeta = List.generate(
      filtered.length,
      (index) => double.parse(filtered[index]),
    );

    double summ = 0;
    heroMeta.forEach((element) {
      summ += element;
    });
    return summ;
  }

  void remove(int id, [bool isRadiant = true]) {
    final radiant = List<HeroRateModel>.from(state.radiant, growable: true);
    final dire = List<HeroRateModel>.from(state.dire, growable: true);

    if (isRadiant) {
      final newList = List<HeroRateModel>.from(state.radiant);
      newList.removeWhere((element) => element.id == id);
      final newState = state.copyWith(radiant: newList);
      state = newState;
      final newDire = recalc(dire, true);
      final newRecalcState = state.copyWith(dire: newDire);
      state = newRecalcState;
    } else {
      final newList = List<HeroRateModel>.from(state.dire);
      newList.removeWhere((element) => element.id == id);
      final newState = state.copyWith(dire: newList);
      state = newState;
      final newRadiant = recalc(radiant, true);
      final newRecalcState = state.copyWith(radiant: newRadiant);
      state = newRecalcState;
    }
  }

  @override
  Future<void> dispose() async {
    await _subscription?.cancel();
    super.dispose();
  }
}
