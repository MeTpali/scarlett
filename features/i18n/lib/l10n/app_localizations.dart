import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class S {
  static const defaultLocale = en;

  static const en = Locale('en');
  static const ru = Locale('ru');

  static bool isEn(Locale locale) => locale == en;

  static const supportedLocales = [en, ru];

  static const List<LocalizationsDelegate> localizationDelegates = [
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context);
}

class ScarlettLocalization extends StatefulWidget {
  final Widget Function(Locale locale) builder;
  const ScarlettLocalization({required this.builder, super.key});

  static void switchLocaleOf(BuildContext context) {
    final _ScarlettLocalizationState? localizationState =
        context.findAncestorStateOfType<_ScarlettLocalizationState>();

    if (localizationState == null) {
      throw FlutterError(
        'ScarlettLocalization operation requested with a context that does not include a ScarlettLocalization.\n'
        'The context used to switch theme modes from the ScarlettLocalization must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }

    localizationState.switchLocale();
  }

  @override
  State<ScarlettLocalization> createState() => _ScarlettLocalizationState();
}

class _ScarlettLocalizationState extends State<ScarlettLocalization> {
  Locale _locale = S.defaultLocale;

  void switchLocale() => setState(() {
        _locale = S.isEn(_locale) ? S.ru : S.en;
      });

  @override
  Widget build(BuildContext context) => widget.builder(_locale);
}
