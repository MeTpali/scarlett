import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/figure.dart';
import '../../theme/elements/figure_theme/figure_theme_data.dart';

class FigurePainter extends CustomPainter {
  final FigureThemeData figureTheme;
  final Color pointForegroundColor;
  final Color pointBackgroundColor;
  final Color lineColor;
  final Color lineLengthColor;
  final Figure figure;
  FigurePainter({
    required this.figure,
    required this.figureTheme,
    required this.lineColor,
    required this.lineLengthColor,
    required this.pointForegroundColor,
    required this.pointBackgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    _drawLines(canvas);
    _drawPoints(canvas, size);
  }

  void _drawPoints(Canvas canvas, Size size) {
    final foregroundCircle = Paint()
      ..strokeCap = StrokeCap.round
      ..color = pointForegroundColor;

    final backgroundCircle = Paint()
      ..strokeCap = StrokeCap.round
      ..color = pointBackgroundColor;

    for (var point in figure.pointList) {
      canvas.drawCircle(
        Offset(point.x, point.y),
        figureTheme.pointRadius + figureTheme.borderSize,
        backgroundCircle,
      );
      canvas.drawCircle(
        Offset(point.x, point.y),
        figureTheme.pointRadius,
        foregroundCircle,
      );
    }
  }

  void _drawLines(Canvas canvas) {
    final paint = Paint();

    if (figure.isClosed) {
      final path = Path();
      paint.style = PaintingStyle.fill;
      paint.color = Colors.white;

      for (var point in figure.pointList) {
        path.lineTo(point.x, point.y);
      }
      path.lineTo(figure.pointList.first.x, figure.pointList.first.y);

      canvas.drawPath(path, paint);
    }

    paint.color = lineColor;
    paint.strokeWidth = figureTheme.lineWidth;
    for (var i = 1; i < figure.pointList.length; i++) {
      final p1 = Offset(figure.pointList[i - 1].x, figure.pointList[i - 1].y);
      final p2 = Offset(figure.pointList[i].x, figure.pointList[i].y);
      canvas.drawLine(p1, p2, paint);
    }

    if (figure.isClosed) {
      final p1 = Offset(figure.pointList.last.x, figure.pointList.last.y);
      final p2 = Offset(figure.pointList.first.x, figure.pointList.first.y);
      canvas.drawLine(p1, p2, paint);

      _drawLineParameters(canvas);
    }
  }

  void _drawLineParameters(Canvas canvas) {
    for (var i = 0; i < figure.pointList.length - 1; i++) {
      _drawLineLength(canvas, figure.pointList[i], figure.pointList[i + 1]);
    }
    _drawLineLength(canvas, figure.pointList[figure.pointList.length - 1],
        figure.pointList[0]);
  }

  void _drawLineLength(
      Canvas canvas, Point<double> firstPoint, Point<double> secondPoint) {
    const mainAxis = Point<double>(1, 0);

    final vector = Point<double>(
      firstPoint.x - secondPoint.x,
      firstPoint.y - secondPoint.y,
    );

    final middle = Offset(
      (firstPoint.x + secondPoint.x) / 2,
      (firstPoint.y + secondPoint.y) / 2,
    );

    final lineLengthStyle = TextStyle(
        color: lineLengthColor,
        fontSize: figureTheme.lineLengthSize,
        fontWeight: FontWeight.bold);

    final textSpan = TextSpan(
      text: vector.magnitude.toStringAsFixed(2),
      style: lineLengthStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.end,
    );

    textPainter.layout(minWidth: 0, maxWidth: 200);

    final cosine = (mainAxis.x * vector.x + mainAxis.y * vector.y) /
        (mainAxis.magnitude * vector.magnitude);
    final angle = _angleCorrectionFactor(vector) * acos(cosine) +
        _angleCorrextion(vector);

    canvas.save();
    canvas.translate(middle.dx, middle.dy);
    canvas.rotate(angle);
    canvas.translate(
      -textPainter.width / 2,
      _heightCorrectionFactor(vector) * textPainter.height +
          _heightCorrection(vector),
    );
    textPainter.paint(canvas, Offset.zero);
    canvas.restore();
  }

  int _angleCorrectionFactor(Point<double> vector) => vector.y < 0 ? -1 : 1;

  double _angleCorrextion(Point<double> vector) => vector.x <= 0 ? pi : 0.0;

  int _heightCorrectionFactor(Point<double> vector) => vector.x > 0 ? -1 : 0;

  double _heightCorrection(Point<double> vector) => vector.x > 0 ? -8 : 8;

  @override
  bool shouldRepaint(FigurePainter oldDelegate) =>
      figureTheme != oldDelegate.figureTheme ||
      lineLengthColor != oldDelegate.lineLengthColor ||
      pointForegroundColor != oldDelegate.pointForegroundColor ||
      pointBackgroundColor != oldDelegate.pointBackgroundColor ||
      lineColor != oldDelegate.lineColor ||
      figure != oldDelegate.figure;
}
