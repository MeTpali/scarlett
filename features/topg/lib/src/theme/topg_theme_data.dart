import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/settings_theme_data.dart';
import 'constants/constants.dart';
import 'theme_modes.dart';

part 'topg_theme_data.freezed.dart';

@freezed
class TopGThemeData with _$TopGThemeData {
  const factory TopGThemeData.light({
    @Default(TopGMode.light) TopGMode mode,
    @Default(TopGColorScheme.light) ColorScheme colorScheme,
    @Default(SettingsThemeData.light()) SettingsThemeData settingsTheme,
  }) = _TopGThemeDataLight;

  const factory TopGThemeData.dark({
    @Default(TopGMode.dark) TopGMode mode,
    @Default(TopGColorScheme.dark) ColorScheme colorScheme,
    @Default(SettingsThemeData.dark()) SettingsThemeData settingsTheme,
  }) = _TopGThemeDataDark;
}
