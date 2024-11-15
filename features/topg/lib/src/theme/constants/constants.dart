import 'package:flutter/material.dart';

abstract class TopGColors {
  //// Main colors
  static const Color blackFogra = Color(0xFF111213);
  static const Color eerieBlack = Color(0xFF212224);
  static const Color quickSilver = Color(0xFFa1a1a1);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blueCrayola = Color(0xFF2f71e8);
  static const Color cyanProcess = Color(0xFF29b9f0);
  static const Color frenchRose = Color(0xFFea558d);
  static const Color softLightBlue = Color(0xFFD5E2FA);
  static const Color softDarkBlue = Color(0xFF21262C);
  static const Color softLightRose = Color(0xFFFDF6F9);
  static const Color softDarkRose = Color(0xFF2B2429);

  //// Components colors
  static const Color yRed = Color(0xFFF45239);
  static const Color yYellow = Color(0xFFFFC526);
  static const Color yGreen = Color(0xFF26BE6B);
  static const Color yViolet = Color(0xFFD26DFB);
  static const Color yBlue = Color(0xFF76B0FA);
  static const Color yLightGrey = Color(0xFFEBEBEB);
  static const Color yMidGrey = Color(0xFF767676);
  static const Color yDarkGrey = Color(0xFF5B5A56);
}

abstract class TopGGradients {
  static const Gradient evenSoftLightBlue = LinearGradient(
    colors: [TopGColors.softLightBlue, TopGColors.softLightBlue],
  );
  static const Gradient evenSoftDarkBlue = LinearGradient(
    colors: [TopGColors.softDarkBlue, TopGColors.softDarkBlue],
  );
  static const Gradient evenSoftLightRose = LinearGradient(
    colors: [TopGColors.softLightBlue, TopGColors.softLightRose],
  );
  static const Gradient evenSoftDarkRose = LinearGradient(
    colors: [TopGColors.softDarkBlue, TopGColors.softDarkRose],
  );
  static const Gradient crayolaFrench = LinearGradient(
    colors: [TopGColors.blueCrayola, TopGColors.frenchRose],
  );
  static const Gradient softDarkCrayolaFrench = LinearGradient(
    colors: [TopGColors.softDarkBlue, TopGColors.softDarkRose],
  );
  static const Gradient softLightCrayolaFrench = LinearGradient(
    colors: [TopGColors.softLightBlue, TopGColors.softLightRose],
  );
}

/// ##### 1) `primary`
/// - Основной цвет, который выделяет ключевые элементы интерфейса.
/// - Используется в таких виджетах, как кнопки или активные вкладки.

/// #### 2) `onPrimary`
/// - Цвет текста и иконок на элементах с цветом `primary`.
/// - Применяется к тексту на кнопках, окрашенных в `primary`.

/// #### 3) `primaryContainer`
/// - Более светлый оттенок основного цвета, который используется для фона элементов.
/// - Применяется в контейнерах и карточках.

/// #### 4) `onPrimaryContainer`
/// - Цвет текста и иконок поверх `primaryContainer`.
/// - Применяется для текста на карточках или контейнерах с фоном `primaryContainer`.

/// #### 5) `secondary`
/// - Вторичный цвет для менее важных элементов интерфейса.
/// - Используется в чипах, акцентах и элементах второстепенной важности.

/// #### 6) `onSecondary`
/// - Цвет текста и иконок поверх элементов с цветом `secondary`.
/// - Применяется в надписях на чипах и второстепенных кнопках.

/// #### 7) `secondaryContainer`
/// - Контейнерный оттенок для вторичного цвета, более светлый вариант `secondary`.
/// - Используется в карточках и контейнерах для менее важных секций.

/// #### 8) `onSecondaryContainer`
/// - Цвет текста поверх элементов с фоном `secondaryContainer`.
/// - Применяется для текста на карточках или контейнерах, окрашенных во вторичный контейнерный цвет.

/// #### 9) `tertiary`
/// - Третичный цвет, часто используется для специализированных акцентов.
/// - Применяется в иконках или элементах, требующих дополнительных визуальных отличий.

/// #### 10) `onTertiary`
/// - Цвет текста и иконок поверх элементов с цветом `tertiary`.
/// - Применяется для текста на иконках или специальных метках.

/// #### 11) `tertiaryContainer`
/// - Контейнерный оттенок третичного цвета, более светлый вариант `tertiary`.
/// - Используется в карточках или фонах для элементов с меньшей приоритетностью.

/// #### 12) `onTertiaryContainer`
/// - Цвет текста и иконок поверх элементов с фоном `tertiaryContainer`.
/// - Применяется в текстах и метках на третичных контейнерах.

/// #### 13) `error`
/// - Цвет, используемый для индикации ошибок.
/// - Применяется в текстовых полях с ошибками и предупреждениях.

/// #### 14) `onError`
/// - Цвет текста и иконок поверх элементов с цветом ошибки `error`.
/// - Применяется для текста в алертах и предупреждениях.

/// #### 15) `errorContainer`
/// - Контейнерный цвет для сообщений об ошибках, более светлый оттенок ошибки.
/// - Используется для фона уведомлений об ошибках.

/// #### 16) `onErrorContainer`
/// - Цвет текста и иконок поверх контейнеров с ошибками.
/// - Применяется для текста на фоновых контейнерах с ошибками.

/// #### 17) `background`
/// - Основной цвет фона приложения.
/// - Применяется в фонах экранов, за пределами карточек или контейнеров.

/// #### 18) `onBackground`
/// - Цвет текста и иконок поверх основного фона.
/// - Применяется для текста на главном экране приложения.

/// #### 19) `surface`
/// - Цвет поверхности, на которой отображаются элементы.
/// - Используется в карточках и контейнерах.

/// #### 20) `onSurface`
/// - Цвет текста и иконок поверх элементов с цветом поверхности `surface`.
/// - Применяется в заголовках и текстах на контейнерах.

/// #### 21) `surfaceVariant`
/// - Вариант цвета поверхности, более сложный и декоративный оттенок.
/// - Используется для дополнительных слоев и разделительных элементов.

/// #### 22) `onSurfaceVariant`
/// - Цвет текста и иконок поверх элементов с цветом `surfaceVariant`.
/// - Применяется для текстов на контейнерах или карточках, использующих этот оттенок.

/// #### 23) `outline`
/// - Цвет для линий, рамок и контуров элементов.
/// - Применяется в иконках, разделительных линиях и границах карточек.

/// #### 24) `outlineVariant`
/// - Вариант цвета для линий и контуров, чаще всего более мягкий.
/// - Применяется для менее заметных разделительных линий.

/// #### 25) `shadow`
/// - Цвет для теней.
/// - Используется в тенях контейнеров и карточек.

/// #### 26) `scrim`
/// - Цвет для затемнения фоновых элементов.
/// - Применяется для затемнения в модальных окнах или выпадающих меню.

/// #### 27) `inverseSurface`
/// - Цвет для обратной поверхности (когда основной фон инвертирован).
/// - Применяется в контрастных темах или элементах с инверсией цветов.

/// #### 28) `onInverseSurface`
/// - Цвет текста поверх инверсной поверхности.
/// - Применяется для текста в элементах с инверсным фоном.

/// #### 29) `inversePrimary`
/// - Инверсный вариант основного цвета.
/// - Используется для инверсных тем.

/// #### 30) `surfaceTint`
/// - Цвет для поверхностного оттенка, часто применяется для создания эффектов.
/// - Используется для создания теней или бликов на поверхности элементов.

/// #### 31) `primaryVariant` (устарел)
/// - Вариант основного цвета.
/// - Использовался до введения более детализированной системы цветов.

/// #### 32) `secondaryVariant` (устарел)
/// - Вариант вторичного цвета.
/// - Использовался для акцентов и менее важных элементов.

/// #### 33) `brightness`
/// - Указывает, светлая или темная тема используется.
/// - Применяется для настройки общей цветовой схемы приложения.

/// ---

/// #### Светлая и тёмная темы (Properties for Light and Dark Themes)

/// #### 34) `primaryLight`
/// - Основной цвет в светлой теме.
/// - Используется в заголовках и ключевых элементах интерфейса в светлой теме.

/// #### 35) `onPrimaryLight`
/// - Цвет текста на элементах с цветом `primary` в светлой теме.
/// - Применяется в текстах и иконках в светлой теме.

/// #### 36) `primaryContainerLight`
/// - Контейнерный цвет для светлой темы.
/// - Используется в карточках и контейнерах в светлой теме.

/// #### 37) `onPrimaryContainerLight`
/// - Цвет текста на контейнерах с `primaryContainer` в светлой теме.
/// - Применяется для текста на фонах в светлой теме.

/// #### 38) `secondaryLight`
/// - Вторичный цвет в светлой теме.
/// - Применяется для дополнительных акцентов и кнопок.

/// #### 39) `onSecondaryLight`
/// - Цвет текста на элементах с цветом `secondary` в светлой теме.
/// - Используется для текста на вторичных кнопках.

/// #### 40) `secondaryContainerLight`
/// - Контейнерный цвет для вторичных элементов в светлой теме.
/// - Применяется в светлой теме для менее заметных элементов.

/// #### 41) `onSecondaryContainerLight`
/// - Цвет текста на контейнерах с `secondaryContainer` в светлой теме.
/// - Применяется для текста на карточках и фонах.

/// #### 42) `tertiaryLight`
/// - Третичный цвет для акцентов в светлой теме.
/// - Используется для акцентных элементов.

/// #### 43) `onTertiaryLight`
/// - Цвет текста на элементах с цветом `tertiary` в светлой теме.
/// - Применяется для специальных меток.

/// #### 44) `tertiaryContainerLight`
/// - Контейнерный цвет для третичных элементов в светлой теме.
/// - Используется для фонов третичных элементов.

/// #### 45) `onTertiaryContainerLight`
/// - Цвет текста на контейнерах с третичным цветом в светлой теме.
/// - Применяется для текста на третичных карточках.

/// #### 46) `primaryDark`
/// - Основной цвет в тёмной теме.
/// - Используется в заголовках и ключевых элементах интерфейса в темной теме.

/// #### 47) `onPrimaryDark`
/// - Цвет текста на элементах с цветом `primary` в тёмной теме.
/// - Применяется для текста в темной теме.

/// #### 48) `secondaryDark`
/// - Вторичный цвет в темной теме.
/// - Используется для менее важных акцентов.

/// #### 49) `onSecondaryDark`
/// - Цвет текста на вторичных элементах в темной теме.
/// - Используется для текста в темной теме.

/// #### 50) `backgroundDark`
/// - Цвет фона для тёмной темы.
/// - Применяется для фонов экранов и контейнеров в темной теме.
abstract class TopGColorScheme {
  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    primary: TopGColors.blueCrayola,
    onPrimary: TopGColors.white,
    secondary: TopGColors.frenchRose,
    onSecondary: TopGColors.blackFogra,
    error: TopGColors.yRed,
    onError: TopGColors.white,
    surface: TopGColors.white,
    onSurface: TopGColors.blackFogra,
  );

  static const ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,
    primary: TopGColors.blueCrayola,
    onPrimary: TopGColors.blackFogra,
    secondary: TopGColors.frenchRose,
    onSecondary: TopGColors.blackFogra,
    error: TopGColors.yRed,
    onError: TopGColors.blackFogra,
    surface: TopGColors.eerieBlack,
    onSurface: TopGColors.white,
  );

  static const ColorScheme custom = ColorScheme(
    primary: Color(0xFF1DB954),
    onPrimary: Colors.white,
    primaryContainer: Color(0xFF30E078),
    onPrimaryContainer: Colors.black,
    secondary: Color(0xFF191414),
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFF121212),
    onSecondaryContainer: Colors.white,
    tertiary: Color(0xFFFFA500),
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xFFFFCC80),
    onTertiaryContainer: Colors.black,
    error: Color(0xFFD32F2F),
    onError: Colors.white,
    errorContainer: Color(0xFFFFCDD2),
    onErrorContainer: Colors.black,
    surface: Color(0xFF121212),
    onSurface: Colors.white,
    onSurfaceVariant: Colors.white,
    outline: Color(0xFF5A5A5A),
    outlineVariant: Color(0xFF424242),
    shadow: Colors.black,
    scrim: Color.fromRGBO(0, 0, 0, 0.5),
    inverseSurface: Colors.white,
    onInverseSurface: Colors.black,
    inversePrimary: Color(0xFF30E078),
    surfaceTint: Color(0xFF1DB954),
    brightness: Brightness.dark,
  );
}

abstract class TopGCardTheme {
  static const CardTheme light = CardTheme(
    color: TopGColors.softLightBlue,
  );

  static const CardTheme dark = CardTheme(
    color: TopGColors.softDarkBlue,
  );
}
