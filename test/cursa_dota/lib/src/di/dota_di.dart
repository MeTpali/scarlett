import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/heroes_modification/add/notifier.dart';
import '../features/heroes_modification/delete/notifier.dart';
import '../features/heroes_modification/update/notifier.dart';
import '../features/meta_modification/add/notifier.dart';
import '../features/meta_modification/delete/notifier.dart';
import '../features/meta_modification/update/notifier.dart';
import '../features/model_lists/hero_notifier.dart';
import '../features/model_lists/meta_notifier.dart';
import '../features/pick/notifier.dart';
import '../models/hero_picker_model/hero_picker_model.dart';
import '../models/heroes_modification/add_hero_model/add_hero_model.dart';
import '../models/heroes_modification/delete_hero_model/delete_hero_model.dart';
import '../models/heroes_modification/update_hero_model/update_hero_model.dart';
import '../models/meta/meta_model.dart';
import '../models/meta_list/meta_list_model.dart';
import '../models/meta_modification/add_meta_model/add_meta_model.dart';
import '../models/meta_modification/delete_meta_model/delete_meta_model.dart';
import '../models/pick/pick_model.dart';
import '../repositories/heroes_repo.dart';
import '../repositories/meta_repo.dart';
import '../services/heroes_service.dart';
import '../services/meta_service.dart';
import 'di.dart';

abstract class DotaDi {
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

  static final addMeta =
      StateNotifierProvider.autoDispose<AddMetaNotifier, AddMetaModel>(
    (ref) => AddMetaNotifier(
      metaRepo: getIt.get<MetaRepo>(),
      metaService: getIt.get<MetaService>(),
    ),
  );

  static final updateMeta =
      StateNotifierProvider.autoDispose<UpdateMetaNotifier, MetaModel>(
    (ref) => UpdateMetaNotifier(
      metaRepo: getIt.get<MetaRepo>(),
      metaService: getIt.get<MetaService>(),
    ),
  );

  static final deleteMeta =
      StateNotifierProvider.autoDispose<DeleteMetaNotifier, DeleteMetaModel>(
    (ref) => DeleteMetaNotifier(
      metaRepo: getIt.get<MetaRepo>(),
      metaService: getIt.get<MetaService>(),
    ),
  );
}
