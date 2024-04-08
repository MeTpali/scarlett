import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/figure.dart';
import '../../models/figure_version.dart';
import '../../models/point_magnet.dart';
import '../point_magnet/point_magnet_notifier.dart';
import '../utils/figure_drawer_utils.dart';

class FigureHistoryNotifier extends StateNotifier<FigureVersion> {
  final Stream<PointMagnet> _magnetStream;
  StreamSubscription<PointMagnet>? _subscription;
  final List<FigureVersion> _figureHistory = [
    const FigureVersion.base(),
  ];

  FigureVersion get currentVersion => state;

  FigureHistoryNotifier({
    required PointMagnetNotifier magnetNotifier,
  })  : _magnetStream = magnetNotifier.stream,
        super(const FigureVersion.base());

  void init() => _subscription ??= _magnetStream.listen(_onMagnetEvent);

  void _onMagnetEvent(PointMagnet pointMagnet) => pointMagnet.mapOrNull(
        magnetize: (magnet) {
          final magnetPointList = <Point<double>>[];

          for (var point in state.figure.pointList) {
            magnetPointList
                .add(FigureDrawerUtils.magnetToNearest(point, magnet.gridStep));
          }

          final newFigure = state.figure.copyWith(pointList: magnetPointList);
          addVersion(newFigure);
          return null;
        },
      );

  void forward() {
    state = _figureHistory.firstWhere(
      (version) => version.index > state.index,
    );
  }

  void backward() {
    state = _figureHistory.reversed.firstWhere(
      (version) => version.index < state.index,
    );
  }

  void addVersion(Figure figure) {
    _figureHistory.removeWhere(
      (version) => version.index > state.index,
    );

    var lastFigure = _figureHistory.removeLast();

    lastFigure = lastFigure.copyWith(isLatest: false);

    final latestVersion = FigureVersion(
      figure: figure,
      index: lastFigure.index + 1,
      isLatest: true,
    );

    _figureHistory.addAll([lastFigure, latestVersion]);

    state = latestVersion;
  }

  @override
  void dispose() async {
    await _subscription?.cancel();
    super.dispose();
  }
}
