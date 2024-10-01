import 'dart:math';

class FigureDrawerUtils {
  static const double defaultGestureArea = 10;
  static const double defaultMagnetArea = 15;

  static bool areSamePoints(Point<double> firstPoint, Point<double> secondPoint,
      [double? gestureArea]) {
    gestureArea ??= defaultGestureArea;

    final vector = Point(
      firstPoint.x - secondPoint.x,
      firstPoint.y - secondPoint.y,
    );
    return vector.magnitude < gestureArea;
  }

  static Point<double> tryMagnet(Point<double> point, double gridStep,
      [double? magnetArea]) {
    final xLowerPoint = point.x ~/ gridStep * gridStep;
    final xUpperPoint = (point.x ~/ gridStep + 1) * gridStep;
    final yLowerPoint = point.y ~/ gridStep * gridStep;
    final yUpperPoint = (point.y ~/ gridStep + 1) * gridStep;

    final firstPoint = Point<double>(xLowerPoint, yLowerPoint);
    final secondPoint = Point<double>(xUpperPoint, yLowerPoint);
    final thirdPoint = Point<double>(xLowerPoint, yUpperPoint);
    final fourthPoint = Point<double>(xUpperPoint, yUpperPoint);

    if (shouldMagnet(point, firstPoint, magnetArea)) {
      point = firstPoint;
    } else if (shouldMagnet(point, secondPoint, magnetArea)) {
      point = secondPoint;
    } else if (shouldMagnet(point, thirdPoint, magnetArea)) {
      point = thirdPoint;
    } else if (shouldMagnet(point, fourthPoint, magnetArea)) {
      point = fourthPoint;
    }

    return point;
  }

  static bool shouldMagnet(Point<double> firstPoint, Point<double> secondPoint,
      [double? magnetArea]) {
    magnetArea ??= defaultMagnetArea;
    final vector = Point(
      firstPoint.x - secondPoint.x,
      firstPoint.y - secondPoint.y,
    );
    return vector.magnitude < magnetArea;
  }

  static Point<double> magnetToNearest(Point<double> point, double gridStep,
      [double? magnetArea]) {
    final xLowerPoint = point.x ~/ gridStep * gridStep;
    final xUpperPoint = (point.x ~/ gridStep + 1) * gridStep;
    final yLowerPoint = point.y ~/ gridStep * gridStep;
    final yUpperPoint = (point.y ~/ gridStep + 1) * gridStep;

    final magnitude1 = sqrt(
      (xLowerPoint - point.x) * (xLowerPoint - point.x) +
          (yLowerPoint - point.y) * (yLowerPoint - point.y),
    );
    final magnitude2 = sqrt(
      (xUpperPoint - point.x) * (xUpperPoint - point.x) +
          (yLowerPoint - point.y) * (yLowerPoint - point.y),
    );
    final magnitude3 = sqrt(
      (xLowerPoint - point.x) * (xLowerPoint - point.x) +
          (yUpperPoint - point.y) * (yUpperPoint - point.y),
    );
    final magnitude4 = sqrt(
      (xUpperPoint - point.x) * (xUpperPoint - point.x) +
          (yUpperPoint - point.y) * (yUpperPoint - point.y),
    );
    final magnitudeList = [magnitude1, magnitude2, magnitude3, magnitude4];
    magnitudeList.sort();

    if (magnitude1 == magnitudeList.first) {
      return Point<double>(xLowerPoint, yLowerPoint);
    } else if (magnitude2 == magnitudeList.first) {
      return Point<double>(xUpperPoint, yLowerPoint);
    } else if (magnitude3 == magnitudeList.first) {
      return Point<double>(xLowerPoint, yUpperPoint);
    } else {
      return Point<double>(xUpperPoint, yUpperPoint);
    }
  }

  static bool intersect(
      Point<double> a, Point<double> b, Point<double> c, Point<double> d) {
    return _isDifferentCoordinates(a.x, b.x, c.x, d.x) &&
        _isDifferentCoordinates(a.y, b.y, c.y, d.y) &&
        _area(a, b, c) * _area(a, b, d) <= 0 &&
        _area(c, d, a) * _area(c, d, b) <= 0;
  }

  static bool _isDifferentCoordinates(double a, double b, double c, double d) {
    double temp;
    if (a > b) {
      temp = b;
      b = a;
      a = temp;
    }
    if (c > d) {
      temp = d;
      d = c;
      c = temp;
    }
    return max(a, c) <= min(b, d);
  }

  static double _area(Point<double> a, Point<double> b, Point<double> c) {
    return (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x);
  }
}
