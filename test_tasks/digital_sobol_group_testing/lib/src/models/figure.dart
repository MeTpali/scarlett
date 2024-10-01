import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'figure.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Figure with _$Figure {
  @Assert('isClosed == false || pointList.length > 2',
      'Figure, that consists of less than 3 points can not be closed')
  const factory Figure({
    required List<Point<double>> pointList,
    @Default(false) bool isClosed,
  }) = _Figure;

  const factory Figure.empty({
    @Default([]) List<Point<double>> pointList,
    @Default(false) bool isClosed,
  }) = _EmptyFigure;
}
