import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get localeFull => 'Русский';

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get lightTheme => 'Светлая тема';

  @override
  String get darkTheme => 'Тёмная тема';

  @override
  String get message => 'Сообщение';

  @override
  String get chat => 'Чат';

  @override
  String get serverAddress => 'Адрес сервера';

  @override
  String get connectToServer => 'Подключиться к серверу';

  @override
  String get host => 'Хост';

  @override
  String get port => 'Порт';

  @override
  String get nickname => 'Никнейм';

  @override
  String get connectionSettings => 'Настройки подключения';

  @override
  String get noSavedMessages => 'Нет сохранённых сообщений';

  @override
  String get viewV => 'Посмотреть';

  @override
  String get savedMessages => 'Сохранённые сообщения';

  @override
  String get authorization => 'Авторизация';

  @override
  String get registration => 'Регистрация';

  @override
  String get logIn => 'Войти';

  @override
  String get signUp => 'Зарегистрироваться';

  @override
  String get noAccountYet => 'Ещё нет аккаунта';

  @override
  String get login => 'Логин';

  @override
  String get password => 'Пароль';
}
