import 'dart:math';

import 'package:flutter/material.dart';

class MovementMarkerPainter extends CustomPainter {
  final Color foregroundColor;
  final Color backgroundColor;
  final Point<double> point;
  MovementMarkerPainter({
    required this.point,
    required this.foregroundColor,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < 4; i++) {
      _drawArrow(canvas);
      _turnCanvas(canvas);
    }

    _drawPoint(canvas);
  }

  void _turnCanvas(Canvas canvas) {
    canvas.translate(point.x, point.y);
    canvas.rotate(pi / 2);
    canvas.translate(-point.x, -point.y);
  }

  void _drawArrow(Canvas canvas) {
    Offset startOffset = Offset(point.x, point.y + 4);
    Offset endOffset = Offset(point.x, point.y + 20);

    final linePaint = Paint()
      ..color = foregroundColor
      ..strokeWidth = 4;

    canvas.drawLine(startOffset, endOffset, linePaint);

    final trianglePaint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = foregroundColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final trianglePath = Path()
      ..moveTo(point.x + 4, endOffset.dy - 2)
      ..lineTo(point.x, endOffset.dy + 2)
      ..lineTo(point.x - 4, endOffset.dy - 2);

    canvas.drawPath(trianglePath, trianglePaint);
  }

  void _drawPoint(Canvas canvas) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = foregroundColor;
    canvas.drawCircle(Offset(point.x, point.y), 6.15, paint);

    paint.color = backgroundColor;
    canvas.drawCircle(Offset(point.x, point.y), 5, paint);
  }

  @override
  bool shouldRepaint(MovementMarkerPainter oldDelegate) =>
      point != oldDelegate.point ||
      foregroundColor != oldDelegate.foregroundColor ||
      backgroundColor != oldDelegate.backgroundColor;
}
