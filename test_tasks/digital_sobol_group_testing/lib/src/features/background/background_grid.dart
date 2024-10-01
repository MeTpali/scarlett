import 'package:flutter/material.dart';

class BackgroundGridPainter extends CustomPainter {
  final double gridStep;
  final double gridPointRadius;
  final Color gridPointColor;

  const BackgroundGridPainter({
    required this.gridStep,
    required this.gridPointRadius,
    required this.gridPointColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint()..color = gridPointColor;

    for (double x = 0; x < size.width; x += gridStep) {
      for (double y = 0; y < size.height; y += gridStep) {
        canvas.drawCircle(Offset(x, y), gridPointRadius, painter);
      }
    }
  }

  @override
  bool shouldRepaint(BackgroundGridPainter oldDelegate) =>
      gridStep != oldDelegate.gridStep ||
      gridPointRadius != oldDelegate.gridPointRadius ||
      gridPointColor != oldDelegate.gridPointColor;
}
