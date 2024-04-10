import 'package:freezed_annotation/freezed_annotation.dart';

import 'theme_modes.dart';

part 'topg_theme_data.freezed.dart';

@freezed
class TopGThemeData with _$TopGThemeData {
  const factory TopGThemeData.light({@Default(TopGMode.light) TopGMode mode}) =
      _TopGThemeDataLight;

  const factory TopGThemeData.dark({@Default(TopGMode.dark) TopGMode mode}) =
      _TopGThemeDataDark;
}
