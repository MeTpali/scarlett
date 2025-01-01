import 'package:flutter/material.dart';

import 'localization_storage.dart';
import 's.dart';

class ScarlettLocale extends StatefulWidget {
  final List<Locale> locales;
  final Widget Function(Locale locale) builder;
  const ScarlettLocale({
    required this.builder,
    this.locales = S.supportedLocales,
    super.key,
  });

  static const _contextError =
      'ScarlettLocale operation requested with a context that does not include a ScarlettLocale.\n'
      'The context used to switch theme modes from the ScarlettLocale must be that of a '
      'widget that is a descendant of a TopG widget.';

  static Future<void> switchLocaleOf(
    BuildContext context,
    Locale locale,
  ) async {
    final _ScarlettLocaleState? localizationState =
        context.findAncestorStateOfType<_ScarlettLocaleState>();

    if (localizationState == null) {
      throw FlutterError(_contextError);
    }

    final locales = availableLocalesOf(context);

    if (!locales.contains(locale)) {
      throw FlutterError(
        'ScarlettLocale of this context does not contain this locale ($locale).',
      );
    }

    await localizationState.setLocale(locale);
  }

  static List<Locale> availableLocalesOf(BuildContext context) {
    final ScarlettLocale? scarlett =
        context.findAncestorWidgetOfExactType<ScarlettLocale>();

    if (scarlett == null) {
      throw FlutterError(_contextError);
    }

    return scarlett.locales;
  }

  static Future<void> init() async {
    await LocaleStorage.init();
  }

  @override
  State<ScarlettLocale> createState() => _ScarlettLocaleState();
}

class _ScarlettLocaleState extends State<ScarlettLocale> {
  late Locale _locale;

  @override
  void initState() {
    super.initState();
    _locale = LocaleStorage.getLocale();
  }

  Future<void> setLocale(Locale locale) async {
    setState(() {
      _locale = locale;
    });

    await LocaleStorage.setLocale(locale);
  }

  @override
  Widget build(BuildContext context) => widget.builder(_locale);
}
