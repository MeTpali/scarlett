// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import '../features/log/log.dart' as _i5;
import '../features/log/logger.dart' as _i6;
import '../repositories/heroes_repo.dart' as _i11;
import '../repositories/meta_repo.dart' as _i10;
import '../routes/app_router/app_router.dart' as _i3;
import '../services/heroes_service.dart' as _i8;
import '../services/meta_service.dart' as _i9;
import 'di.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.lazySingleton<_i4.Logger>(() => appModule.createLogger());
    gh.lazySingleton<_i5.Log>(() => _i6.Logger(gh<_i4.Logger>()));
    gh.lazySingleton<_i7.Dio>(
      () => appModule.dota2Client(gh<_i5.Log>()),
      instanceName: 'TKSBPClient',
    );
    gh.singleton<_i8.HeroesService>(
        () => _i8.HeroesService(gh<_i7.Dio>(instanceName: 'TKSBPClient')));
    gh.singleton<_i9.MetaService>(
        () => _i9.MetaService(gh<_i7.Dio>(instanceName: 'TKSBPClient')));
    gh.singleton<_i10.MetaRepo>(
        () => _i10.MetaRepo(metaService: gh<_i9.MetaService>())..init());
    gh.singleton<_i11.HeroesRepo>(
        () => _i11.HeroesRepo(heroesService: gh<_i8.HeroesService>())..init());
    return this;
  }
}

class _$AppModule extends _i12.AppModule {}
