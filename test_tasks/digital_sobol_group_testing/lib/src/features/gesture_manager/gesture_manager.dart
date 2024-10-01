import 'dart:math';
import 'dart:ui';

import '../../models/figure.dart';
import '../figure/figure_notifier.dart';
import '../figure_history/figure_history_notifier.dart';
import '../utils/figure_drawer_utils.dart';

class GestureManager {
  final FigureNotifier _figureNotifier;
  final FigureHistoryNotifier _figureHistory;
  int _movingPointIndex = 0;

  List<Point<double>> get _cashedPointList =>
      _figureHistory.currentVersion.figure.pointList;

  GestureManager({
    required FigureNotifier figureRepository,
    required FigureHistoryNotifier figureHistoryManager,
  })  : _figureNotifier = figureRepository,
        _figureHistory = figureHistoryManager;

  void onPointerDown(Offset pointer) {
    final pointIndex = _figureNotifier.getPointIndex(
      Point<double>(pointer.dx, pointer.dy),
    );

    if (pointIndex == null) {
      _movingPointIndex = _figureNotifier.pointList.length;
      _figureNotifier.addPoint(Point<double>(pointer.dx, pointer.dy));
    } else {
      _movingPointIndex = pointIndex;
    }
  }

  void onPointerMove(Offset pointer) {
    _figureNotifier.updatePointByIndex(
      Point<double>(pointer.dx, pointer.dy),
      _movingPointIndex,
    );
  }

  void onPointerUp(Offset pointer) {
    if (_shouldClose(pointer)) {
      _figureNotifier.removeLast();
      _figureNotifier.updateClosed(true);

      final newFigure =
          Figure(pointList: _figureNotifier.pointList, isClosed: true);
      _figureHistory.addVersion(newFigure);
      return;
    }

    if (_figureNotifier.hasCrossing(_movingPointIndex)) {
      _figureNotifier.cancelChanges();
    } else {
      final pointList =
          List<Point<double>>.from(_figureNotifier.pointList, growable: true);
      if (_movingPointIndex == pointList.length) {
        pointList.add(Point<double>(pointer.dx, pointer.dy));
      } else {
        pointList[_movingPointIndex] = Point<double>(pointer.dx, pointer.dy);
      }

      _figureHistory.addVersion(
        _figureHistory.currentVersion.figure.copyWith(pointList: pointList),
      );
    }
  }

  bool _shouldClose(Offset pointer) {
    if (_figureNotifier.pointList.length < 4) {
      return false;
    }

    if (_movingPointIndex == _figureNotifier.pointList.length - 1) {
      return FigureDrawerUtils.areSamePoints(
        Point<double>(pointer.dx, pointer.dy),
        _cashedPointList.first,
      );
    }

    if (_movingPointIndex == 0) {
      return FigureDrawerUtils.areSamePoints(
        Point<double>(pointer.dx, pointer.dy),
        _cashedPointList.last,
      );
    }
    return false;
  }
}
