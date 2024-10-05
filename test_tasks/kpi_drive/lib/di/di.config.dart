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

import '../services/board_service.dart' as _i82;
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
    final kpiModule = _$KpiModule();
    gh.lazySingleton<_i361.Dio>(
      () => kpiModule.kpiDriveClient(),
      instanceName: 'KpiClient',
    );
    gh.singleton<_i82.BoardService>(
        () => _i82.BoardService(gh<_i361.Dio>(instanceName: 'KpiClient')));
    return this;
  }
}

class _$KpiModule extends _i913.KpiModule {}
