import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get localeFull => 'English';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get lightTheme => 'Light theme';

  @override
  String get darkTheme => 'Dark theme';

  @override
  String get message => 'Message';

  @override
  String get chat => 'Chat';
}
