import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/heroes_modification/add/notifier.dart';
import '../features/heroes_modification/delete/notifier.dart';
import '../features/heroes_modification/update/notifier.dart';
import '../features/model_lists/hero_notifier.dart';
import '../features/model_lists/meta_notifier.dart';
import '../features/pick/notifier.dart';
import '../features/sex/notifier.dart';
import '../models/add_hero_model/add_hero_model.dart';
import '../models/delete_hero_model/delete_hero_model.dart';
import '../models/hero_picker_model/hero_picker_model.dart';
import '../models/meta/meta.dart';
import '../models/meta_list/meta_list_model.dart';
import '../models/pick/pick_model.dart';
import '../models/update_hero_model/update_hero_model.dart';
import '../repositories/heroes_repo.dart';
import '../repositories/meta_repo.dart';
import '../services/heroes_service.dart';
import '../services/meta_service.dart';
import 'di.dart';

abstract class DotaDi {
  static final sexProvider =
      StateNotifierProvider.autoDispose<SexNotifier, int>(
    (ref) => SexNotifier(
      heroesService: getIt.get<HeroesService>(),
      metaService: getIt.get<MetaService>(),
    ),
  );

  static final heroPicker =
      StateNotifierProvider.autoDispose<HeroPickerNotifier, HeroPickerModel>(
    (ref) => HeroPickerNotifier(
      heroesRepo: getIt.get<HeroesRepo>(),
    )..init(),
  );

  static final pickNotifier =
      StateNotifierProvider.autoDispose<PickNotifier, PickModel>(
    (ref) => PickNotifier(
      heroesRepo: getIt.get<HeroesRepo>(),
      metaRepo: getIt.get<MetaRepo>(),
    )..init(),
  );

  static final addHero =
      StateNotifierProvider.autoDispose<AddHeroNotifier, AddHeroModel>(
    (ref) => AddHeroNotifier(
      heroesRepo: getIt.get<HeroesRepo>(),
      heroesService: getIt.get<HeroesService>(),
    ),
  );

  static final updateHero =
      StateNotifierProvider.autoDispose<UpdateHeroNotifier, UpdateHeroModel>(
    (ref) => UpdateHeroNotifier(
      heroesRepo: getIt.get<HeroesRepo>(),
      heroesService: getIt.get<HeroesService>(),
    ),
  );

  static final deleteHero =
      StateNotifierProvider.autoDispose<DeleteHeroNotifier, DeleteHeroModel>(
    (ref) => DeleteHeroNotifier(
      heroesRepo: getIt.get<HeroesRepo>(),
      heroesService: getIt.get<HeroesService>(),
    ),
  );

  static final metaList =
      StateNotifierProvider.autoDispose<MetaListNotifier, MetaListModel>(
    (ref) => MetaListNotifier(
      metaRepo: getIt.get<MetaRepo>(),
      heroesRepo: getIt.get<HeroesRepo>(),
    )..init(),
  );
}
