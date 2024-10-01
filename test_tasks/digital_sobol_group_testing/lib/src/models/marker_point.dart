import 'package:freezed_annotation/freezed_annotation.dart';

part 'marker_point.freezed.dart';

@freezed
class Marker with _$Marker {
  const factory Marker.point({
    required double x,
    required double y,
  }) = _MarkerPoint;

  const factory Marker.idle() = _MarkerIdle;
}
