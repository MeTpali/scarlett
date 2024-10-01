import 'package:flutter/material.dart';

import 'elements/colors/figure_colors.dart';
import 'elements/figure_theme/figure_theme_data.dart';
import 'elements/grid_theme/grid_theme_data.dart';
import 'elements/marker_theme/marker_theme_data.dart';
import 'figure_drawer_theme_data.dart';

class FigureDrawerTheme extends InheritedTheme {
  final FigureDrawerThemeData data;

  FigureDrawerTheme({
    super.key,
    GridThemeData? grid,
    FigureThemeData? figure,
    MarkerThemeData? marker,
    FigureColors? colors,
    required super.child,
  }) : data = FigureDrawerThemeData(
          grid: grid ?? const GridThemeData.defaultValue(),
          figure: figure ?? const FigureThemeData.defaultValue(),
          colors: colors ?? const FigureColors.defaultValue(),
          marker: marker ?? const MarkerThemeData.defaultValue(),
        );

  const FigureDrawerTheme.fromFigureThemeData({
    super.key,
    required this.data,
    required super.child,
  });

  static FigureDrawerThemeData of(BuildContext context) {
    final FigureDrawerTheme? inheritedFigureTheme =
        context.dependOnInheritedWidgetOfExactType<FigureDrawerTheme>();
    FigureDrawerThemeData? buttonTheme = inheritedFigureTheme?.data;
    if (buttonTheme == null) {
      throw Exception("Unimplemented FigureTheme");
    }
    return buttonTheme;
  }

  @override
  bool updateShouldNotify(FigureDrawerTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      FigureDrawerTheme.fromFigureThemeData(data: data, child: child);
}
