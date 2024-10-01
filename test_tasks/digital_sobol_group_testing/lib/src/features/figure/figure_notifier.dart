import 'dart:async';
import 'dart:math';

import 'package:riverpod/riverpod.dart';

import '../../models/figure.dart';
import '../../models/figure_version.dart';
import '../figure_history/figure_history_notifier.dart';
import '../utils/figure_drawer_utils.dart';

class FigureNotifier extends StateNotifier<Figure> {
  final Stream<FigureVersion> _historyStream;
  final FigureHistoryNotifier _historyNotifier;
  StreamSubscription<FigureVersion>? _subscription;

  List<Point<double>> get pointList => state.pointList;

  FigureNotifier({
    required FigureHistoryNotifier historyManager,
  })  : _historyNotifier = historyManager,
        _historyStream = historyManager.stream,
        super(const Figure(pointList: []));

  void init() => _subscription ??= _historyStream.listen(_onListen);

  void _onListen(FigureVersion figureVersion) => state = figureVersion.figure;

  void updateFigure(Figure figure) => state = figure;

  void updateClosed(bool isClosed) =>
      state = state.copyWith(isClosed: isClosed);

  void updatePointList(List<Point<double>> pointList) =>
      state = state.copyWith(pointList: pointList);

  void cancelChanges() => state = _historyNotifier.currentVersion.figure;

  void addPoint(Point<double> point) {
    final list = List.of(state.pointList, growable: true);
    list.add(point);
    state = state.copyWith(pointList: list);
  }

  void removeLast() {
    final list = List.of(state.pointList, growable: true);
    list.removeLast();
    state = state.copyWith(pointList: list);
  }

  int? getPointIndex(Point<double> newPoint) {
    for (int i = 0; i < state.pointList.length; i++) {
      if (FigureDrawerUtils.areSamePoints(state.pointList[i], newPoint)) {
        return i;
      }
    }
    return null;
  }

  void updatePointByIndex(Point<double> point, int index) {
    final list = List.of(state.pointList, growable: true);
    list[index] = point;
    state = state.copyWith(pointList: list);
  }

  bool hasCrossing(int index) {
    if (state.pointList.length < 4) {
      return false;
    }

    if (index == 0) {
      return _checkStartIndex();
    } else if (index == state.pointList.length - 1) {
      return _checkLastIndex();
    } else {
      return _checkOtherIndex(index);
    }
  }

  bool _checkStartIndex() {
    final firstPoint = state.pointList[0];
    final secondPoint = state.pointList[1];
    for (var i = 2; i < state.pointList.length - 1; i++) {
      if (FigureDrawerUtils.intersect(firstPoint, secondPoint,
          state.pointList[i], state.pointList[i + 1])) {
        return true;
      }
    }

    if (state.isClosed) {
      final thirdPoint = state.pointList[state.pointList.length - 1];
      for (var i = 1; i < state.pointList.length - 2; i++) {
        if (FigureDrawerUtils.intersect(firstPoint, thirdPoint,
            state.pointList[i], state.pointList[i + 1])) {
          return true;
        }
      }
    }
    return false;
  }

  bool _checkLastIndex() {
    final firstPoint = state.pointList[state.pointList.length - 1];
    final secondPoint = state.pointList[state.pointList.length - 2];
    for (var i = 0; i < state.pointList.length - 3; i++) {
      if (FigureDrawerUtils.intersect(firstPoint, secondPoint,
          state.pointList[i], state.pointList[i + 1])) {
        return true;
      }
    }

    if (state.isClosed) {
      final thirdPoint = state.pointList[0];
      for (var i = 1; i < state.pointList.length - 2; i++) {
        if (FigureDrawerUtils.intersect(firstPoint, thirdPoint,
            state.pointList[i], state.pointList[i + 1])) {
          return true;
        }
      }
    }

    return false;
  }

  bool _checkOtherIndex(int index) {
    final firstPoint = state.pointList[index];
    final secondPoint = state.pointList[index + 1];
    final thirdPoint = state.pointList[index - 1];
    final listLength =
        state.isClosed ? state.pointList.length : state.pointList.length - 1;
    final previousIndex =
        index - 2 < 0 ? state.pointList.length - 1 : index - 2;

    for (var i = 0; i < listLength; i++) {
      final endIndex = i == state.pointList.length - 1 ? 0 : i + 1;
      if (i != index && i != index - 1) {
        if (i != index + 1) {
          if (FigureDrawerUtils.intersect(firstPoint, secondPoint,
              state.pointList[i], state.pointList[endIndex])) {
            return true;
          }
        }

        if (i != previousIndex) {
          if (FigureDrawerUtils.intersect(firstPoint, thirdPoint,
              state.pointList[i], state.pointList[endIndex])) {
            return true;
          }
        }
      }
    }

    return false;
  }

  @override
  void dispose() async {
    await _subscription?.cancel();
    super.dispose();
  }
}
