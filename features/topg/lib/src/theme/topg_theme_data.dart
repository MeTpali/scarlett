import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants/constants.dart';
import 'elements/theme_modes.dart';

part 'topg_theme_data.freezed.dart';

@freezed
class TopGThemeData with _$TopGThemeData {
  const factory TopGThemeData.light({
    @Default(TopGMode.light) TopGMode mode,
    @Default(TopGColorScheme.light) ColorScheme colorScheme,
  }) = _TopGThemeDataLight;

  const factory TopGThemeData.dark({
    @Default(TopGMode.dark) TopGMode mode,
    @Default(TopGColorScheme.dark) ColorScheme colorScheme,
  }) = _TopGThemeDataDark;
}
