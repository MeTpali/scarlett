import 'package:freezed_annotation/freezed_annotation.dart';

part 'figure_theme_data.freezed.dart';

@freezed
class FigureThemeData with _$FigureThemeData {
  const factory FigureThemeData({
    required double pointRadius,
    required double borderSize,
    required double lineWidth,
    required double lineLengthSize,
  }) = _FigureThemeData;

  const factory FigureThemeData.defaultValue({
    @Default(5) double pointRadius,
    @Default(1.15) double borderSize,
    @Default(4) double lineWidth,
    @Default(11) double lineLengthSize,
  }) = _DefaultFigureThemeData;
}
