import 'package:freezed_annotation/freezed_annotation.dart';

import 'figure.dart';

part 'figure_version.freezed.dart';

@freezed
class FigureVersion with _$FigureVersion {
  @Assert('index >= 0', 'Figure version should not be less than 0')
  const factory FigureVersion({
    required Figure figure,
    required int index,
    @Default(false) bool isLatest,
    @Default(false) bool isInitial,
  }) = _FigureVersion;

  const factory FigureVersion.base({
    @Default(Figure.empty()) Figure figure,
    @Default(0) int index,
    @Default(true) bool isLatest,
    @Default(true) bool isInitial,
  }) = _BaseFigureVersion;
}
