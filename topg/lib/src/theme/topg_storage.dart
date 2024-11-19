import 'package:shared_preferences/shared_preferences.dart';

import 'theme_modes.dart';

class TopGStorage {
  TopGStorage._();
  static const _key = 'TopG_theme_mode';

  static final instance = TopGStorage._();
  static SharedPreferences? _sharedPreferences;
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static TopGMode getThemeMode() {
    final stringThemeMode = _sharedPreferences?.getString(_key);
    final newMode = TopGModeX.resolveString(stringThemeMode);
    return newMode;
  }

  static Future<void> setTheme(TopGMode themeMode) async {
    await _sharedPreferences?.setString(_key, themeMode.toString());
  }
}
