import 'package:flutter/material.dart';

abstract class TopGColors {
  /// Main colors
  static const Color blackFogra = Color(0xFF111213);
  static const Color eerieBlack = Color(0xFF212224);
  static const Color quickSilver = Color(0xFFa1a1a1);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blueCrayola = Color(0xFF2f71e8);
  static const Color cyanProcess = Color(0xFF29b9f0);
  static const Color frenchRose = Color(0xFFea558d);

  /// Components colors
  static const Color yRed = Color(0xFFF45239);
  static const Color yYellow = Color(0xFFFFC526);
  static const Color yGreen = Color(0xFF26BE6B);
  static const Color violet = Color(0xFFD26DFB);
  static const Color yBlue = Color(0xFF76B0FA);
  static const Color yLightGrey = Color(0xFFEBEBEB);
  static const Color yMidGrey = Color(0xFF767676);
  static const Color yDarkGrey = Color(0xFF5B5A56);
}

abstract class TopGColorScheme {
  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    primary: TopGColors.blueCrayola,
    onPrimary: TopGColors.white,
    secondary: TopGColors.frenchRose,
    onSecondary: TopGColors.blackFogra,
    error: TopGColors.yRed,
    onError: TopGColors.white,
    background: TopGColors.white,
    onBackground: TopGColors.blackFogra,
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
    background: TopGColors.eerieBlack,
    onBackground: TopGColors.white,
    surface: TopGColors.eerieBlack,
    onSurface: TopGColors.white,
  );
}