import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_magnet.freezed.dart';

@freezed
class PointMagnet with _$PointMagnet {
  const factory PointMagnet.magnetize({
    required double gridStep,
  }) = _Magnetize;

  const factory PointMagnet.demagnetize() = _Demagnetize;
}
