import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 's.dart';

/// [LocaleStorage] sholud call init() before runApp to first time initialize shared preferences
class LocaleStorage {
  LocaleStorage._();

  static final LocaleStorage instance = LocaleStorage._();
  static const _key = 'Scarlett_Locale';
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Locale getLocale() {
    final languageCode = _sharedPreferences?.getString(_key);
    final locale =
        languageCode != null ? Locale(languageCode) : S.defaultLocale;
    return locale;
  }

  static Future<void> setLocale(Locale locale) async {
    await _sharedPreferences?.setString(_key, locale.languageCode);
  }
}
