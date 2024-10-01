import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/point_magnet.dart';

class PointMagnetNotifier extends StateNotifier<PointMagnet> {
  PointMagnetNotifier() : super(const PointMagnet.demagnetize());

  bool get shouldMagnet => state.map(
        magnetize: (_) => true,
        demagnetize: (_) => false,
      );

  void magnetize(double gridStep) {
    state = PointMagnet.magnetize(gridStep: gridStep);
  }

  void demagnetize() => state = const PointMagnet.demagnetize();
}
