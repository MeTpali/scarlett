import 'package:freezed_annotation/freezed_annotation.dart';

import 'elements/colors/figure_colors.dart';
import 'elements/figure_theme/figure_theme_data.dart';
import 'elements/grid_theme/grid_theme_data.dart';
import 'elements/marker_theme/marker_theme_data.dart';

part 'figure_drawer_theme_data.freezed.dart';

@freezed
class FigureDrawerThemeData with _$FigureDrawerThemeData {
  const factory FigureDrawerThemeData({
    required GridThemeData grid,
    required FigureThemeData figure,
    required MarkerThemeData marker,
    required FigureColors colors,
  }) = _FigureDrawerThemeData;
}
