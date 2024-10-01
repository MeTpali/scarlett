import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/marker_point.dart';

class MarkerNotifier extends StateNotifier<Marker> {
  MarkerNotifier() : super(const Marker.idle());

  void onPointerDown(Offset offset) =>
      state = Marker.point(x: offset.dx, y: offset.dy);

  void onPointerMove(Offset offset) =>
      state = Marker.point(x: offset.dx, y: offset.dy);

  void onPointerUp() => state = const Marker.idle();
}
