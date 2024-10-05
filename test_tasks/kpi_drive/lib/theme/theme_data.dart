import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants.dart';

part 'theme_data.freezed.dart';

@freezed
class KpiThemeData with _$KpiThemeData {
  const factory KpiThemeData.light({
    @Default(KpiThemeMode.light) KpiThemeMode mode,
    @Default(KpiColorScheme.light) ColorScheme colorScheme,
    @Default(KpiAppBarTheme.light) AppBarTheme appBarTheme,
  }) = _KpiThemeDataLight;

  const factory KpiThemeData.dark({
    @Default(KpiThemeMode.dark) KpiThemeMode mode,
    @Default(KpiColorScheme.dark) ColorScheme colorScheme,
    @Default(KpiAppBarTheme.dark) AppBarTheme appBarTheme,
  }) = _KpiThemeDataDark;
}
