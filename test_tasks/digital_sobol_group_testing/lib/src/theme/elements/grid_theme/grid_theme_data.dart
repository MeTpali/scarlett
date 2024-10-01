import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_theme_data.freezed.dart';

@freezed
class GridThemeData with _$GridThemeData {
  const factory GridThemeData({
    required double step,
    required double pointRadius,
  }) = _GridThemeData;

  const factory GridThemeData.defaultValue({
    @Default(50) double step,
    @Default(2) double pointRadius,
  }) = _DefaultGridThemeData;
}
