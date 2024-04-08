import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/figure/figure_notifier.dart';
import '../features/figure_history/figure_history_notifier.dart';
import '../features/gesture_manager/gesture_manager.dart';
import '../features/movement_marker/marker_notifier.dart';
import '../features/point_magnet/point_magnet_notifier.dart';
import '../models/figure.dart';
import '../models/figure_version.dart';
import '../models/marker_point.dart';
import '../models/point_magnet.dart';

class FigureDi {
  static final figure =
      StateNotifierProvider.autoDispose<FigureNotifier, Figure>(
    (ref) => FigureNotifier(
      historyManager: ref.watch(figureHistory.notifier),
    )..init(),
  );

  static final gestureManager = Provider.autoDispose<GestureManager>(
    (ref) => GestureManager(
      figureRepository: ref.watch(figure.notifier),
      figureHistoryManager: ref.watch(figureHistory.notifier),
    ),
  );

  static final marker =
      StateNotifierProvider.autoDispose<MarkerNotifier, Marker>(
    (ref) => MarkerNotifier(),
  );

  static final pointMagnet =
      StateNotifierProvider.autoDispose<PointMagnetNotifier, PointMagnet>(
    (ref) => PointMagnetNotifier(),
  );

  static final figureHistory =
      StateNotifierProvider.autoDispose<FigureHistoryNotifier, FigureVersion>(
    (ref) => FigureHistoryNotifier(
      magnetNotifier: ref.watch(pointMagnet.notifier),
    )..init(),
  );
}
