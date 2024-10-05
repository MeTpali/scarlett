import 'package:kpi_drive/theme/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KpiThemeStorage {
  KpiThemeStorage._();
  static const _key = 'theme_mode';

  static final instance = KpiThemeStorage._();
  static SharedPreferences? _sharedPreferences;
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static KpiThemeMode getThemeMode() {
    final stringThemeMode = _sharedPreferences?.getString(_key);
    final newMode = KpiThemeModeX.resolveString(stringThemeMode);
    return newMode;
  }

  static Future<void> setTheme(KpiThemeMode themeMode) async {
    await _sharedPreferences?.setString(_key, themeMode.toString());
  }
}
