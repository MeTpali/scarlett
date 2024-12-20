import 'dart:math';

import 'package:flutter/material.dart';

class RadialScoreWidget extends StatelessWidget {
  /// Widget on foreground in the center of [RadialScoreWidget]
  final Widget child;

  /// The percentage by which the strip should be filled, must be between 0 and 1
  final double percent;

  /// Background color of [RadialScoreWidget]
  final Color backgroundColor;

  /// The part corresponding to the [percent]
  final Color lineColor;

  /// The part corresponding to the 1 - [percent]
  final Color freeColor;

  /// Width of percent line
  final double lineWidth;

  const RadialScoreWidget({
    required this.child,
    required this.backgroundColor,
    required this.lineColor,
    required this.freeColor,
    required this.lineWidth,
    required this.percent,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: _RadialScorePainter(
              percent: percent,
              backgroundColor: backgroundColor,
              lineColor: lineColor,
              freeColor: freeColor,
              lineWidth: lineWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(child: child),
          ),
        ],
      );
}

class _RadialScorePainter extends CustomPainter {
  final double percent;
  final Color backgroundColor;
  final Color lineColor;
  final Color freeColor;
  final double lineWidth;
  _RadialScorePainter({
    required this.backgroundColor,
    required this.lineColor,
    required this.freeColor,
    required this.lineWidth,
    required this.percent,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final Rect arcRect = calculateArcsRect(size);

    drawBackground(canvas, size);

    drawFreeArc(canvas, arcRect);

    drawFellArc(canvas, arcRect);
  }

  void drawFellArc(Canvas canvas, Rect arcRect) {
    final paint = Paint();
    paint.color = lineColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = lineWidth;
    paint.strokeCap = StrokeCap.round; // вид окончания фигуры
    // дуга, startAngle/sweepAngle - начальная точка и угол поворота от начальной точки
    canvas.drawArc(
      arcRect,
      -pi / 2,
      pi * 2 * percent,
      false,
      paint,
    );
  }

  void drawFreeArc(Canvas canvas, Rect arcRect) {
    final paint = Paint();
    paint.color = freeColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = lineWidth;
    // дуга, startAngle/sweepAngle - начальная точка и угол поворота от начальной точки
    canvas.drawArc(
      arcRect,
      -pi / 2 + pi * 2 * percent,
      pi * 2 * (1 - percent),
      false,
      paint,
    );
  }

  void drawBackground(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = backgroundColor;
    paint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, paint);
  }

  Rect calculateArcsRect(Size size) {
    const linesMargin = 3;
    final offset = lineWidth / 2 + linesMargin;
    final arcRect = Offset(offset, offset) &
        Size(size.width - offset * 2, size.height - offset * 2);
    return arcRect;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
