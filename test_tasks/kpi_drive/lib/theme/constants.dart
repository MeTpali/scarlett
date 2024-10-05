import 'package:flutter/material.dart';

import 'theme_data.dart';

enum KpiThemeMode { light, dark }

extension KpiThemeModeX on KpiThemeMode {
  KpiThemeMode get deafault => KpiThemeMode.light;

  KpiThemeData resolveTheme() {
    switch (this) {
      case KpiThemeMode.light:
        return const KpiThemeData.light();
      case KpiThemeMode.dark:
        return const KpiThemeData.dark();
    }
  }

  static KpiThemeMode resolveString(String? themeMode) {
    switch (themeMode) {
      case 'KpiThemeMode.light':
        return KpiThemeMode.light;
      case 'KpiThemeMode.dark':
        return KpiThemeMode.dark;
      default:
        return KpiThemeMode.light;
    }
  }
}

abstract class KpiColors {
  static const Color green = Color(0xFF4CAF50);
  static const Color white = Colors.white;
  static const Color yellow = Color(0xFFFFEB3B);
  static const Color red = Color(0xFFF44336);
  static const Color black = Colors.black;
  static const Color dark = Color(0xFF1F1F1F);
  static const Color darkGrey = Color(0xFF2C2C2C);
  static const Color lightGrey = Color(0xFFF0F0F0);
}

abstract class KpiColorScheme {
  static const ColorScheme light = ColorScheme.light(
    primary: KpiColors.green,
    onPrimary: KpiColors.white,
    secondary: KpiColors.yellow,
    onSecondary: KpiColors.black,
    surface: KpiColors.white,
    onSurface: KpiColors.black,
    primaryContainer: KpiColors.lightGrey,
    onPrimaryContainer: KpiColors.darkGrey,
    error: KpiColors.red,
    onError: KpiColors.white,
    brightness: Brightness.light,
  );

  static const ColorScheme dark = ColorScheme.dark(
    primary: KpiColors.green,
    onPrimary: Colors.white,
    secondary: KpiColors.yellow,
    onSecondary: KpiColors.black,
    surface: KpiColors.dark,
    onSurface: Colors.white,
    primaryContainer: KpiColors.darkGrey,
    onPrimaryContainer: KpiColors.lightGrey,
    error: KpiColors.red,
    onError: KpiColors.white,
    brightness: Brightness.dark,
  );
}

abstract class KpiAppBarTheme {
  static const AppBarTheme light = AppBarTheme(
    backgroundColor: Color(0xFFF0F0F0),
    foregroundColor: Colors.black,
  );

  static const AppBarTheme dark = AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Color(0xFFF0F0F0),
  );
}
