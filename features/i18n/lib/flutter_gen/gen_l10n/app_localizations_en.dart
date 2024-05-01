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

  @override
  String get serverAddress => 'Server address';

  @override
  String get connectToServer => 'Connect to server';

  @override
  String get host => 'Host';

  @override
  String get port => 'Port';

  @override
  String get nickname => 'Nickname';

  @override
  String get connectionSettings => 'Connection settings';

  @override
  String get noSavedMessages => 'No saved messages';

  @override
  String get viewV => 'View';

  @override
  String get savedMessages => 'Saved messages';
}
