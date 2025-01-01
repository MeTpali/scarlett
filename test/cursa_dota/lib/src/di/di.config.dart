// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../features/log/log.dart' as _i471;
import '../features/log/logger.dart' as _i626;
import '../repositories/heroes_repo.dart' as _i367;
import '../repositories/meta_repo.dart' as _i598;
import '../routes/app_router/app_router.dart' as _i185;
import '../services/heroes_service.dart' as _i353;
import '../services/meta_service.dart' as _i806;
import 'di.dart' as _i913;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i185.AppRouter>(() => _i185.AppRouter());
    gh.lazySingleton<_i974.Logger>(() => appModule.createLogger());
    gh.lazySingleton<_i471.Log>(() => _i626.Logger(gh<_i974.Logger>()));
    gh.lazySingleton<_i361.Dio>(
      () => appModule.dota2Client(gh<_i471.Log>()),
      instanceName: 'DotaClient',
    );
    gh.singleton<_i353.HeroesService>(
        () => _i353.HeroesService(gh<_i361.Dio>(instanceName: 'DotaClient')));
    gh.singleton<_i806.MetaService>(
        () => _i806.MetaService(gh<_i361.Dio>(instanceName: 'DotaClient')));
    gh.singleton<_i367.HeroesRepo>(() =>
        _i367.HeroesRepo(heroesService: gh<_i353.HeroesService>())..init());
    gh.singleton<_i598.MetaRepo>(
        () => _i598.MetaRepo(metaService: gh<_i806.MetaService>())..init());
    return this;
  }
}

class _$AppModule extends _i913.AppModule {}
