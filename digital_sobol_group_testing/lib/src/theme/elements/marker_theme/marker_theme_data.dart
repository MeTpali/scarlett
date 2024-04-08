import 'package:freezed_annotation/freezed_annotation.dart';

part 'marker_theme_data.freezed.dart';

@freezed
class MarkerThemeData with _$MarkerThemeData {
  const factory MarkerThemeData({
    required double pointRadius,
    required double borderRadius,
    required double arrowLength,
    required double arrowWidth,
  }) = _MarkerThemeData;

  const factory MarkerThemeData.defaultValue({
    @Default(5) double pointRadius,
    @Default(1.15) double borderRadius,
    @Default(16) double arrowLength,
    @Default(4) double arrowWidth,
  }) = _DefaultMarkerThemeData;
}
