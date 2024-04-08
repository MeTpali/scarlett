import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/figure_di.dart';
import '../../theme/figure_drawer_theme.dart';
import '../background/background_grid.dart';
import '../figure/figure_painter.dart';
import '../movement_marker/movement_marker.dart';

class FigureDrawerWidget extends ConsumerWidget {
  const FigureDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final figure = ref.watch(FigureDi.figure);
    final marker = ref.watch(FigureDi.marker);
    final theme = FigureDrawerTheme.of(context);
    final colors = theme.colors;

    final pointForegroundColor =
        figure.isClosed ? colors.mainWhite : colors.mainBlue;
    final pointBackgroundColor =
        figure.isClosed ? colors.darkGrey : colors.mainWhite;

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: BackgroundGridPainter(
              gridStep: theme.grid.step,
              gridPointRadius: theme.grid.pointRadius,
              gridPointColor: colors.lightBlue,
            ),
          ),
        ),
        if (figure.pointList.isNotEmpty)
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
              painter: FigurePainter(
                figure: figure,
                figureTheme: theme.figure,
                lineColor: colors.lineColor,
                lineLengthColor: colors.mainBlue,
                pointForegroundColor: pointForegroundColor,
                pointBackgroundColor: pointBackgroundColor,
              ),
            ),
          ),
        marker.when(
          point: (x, y) => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
              painter: MovementMarkerPainter(
                foregroundColor: colors.mainBlue,
                backgroundColor: colors.mainWhite,
                point: Point<double>(x, y),
              ),
            ),
          ),
          idle: () => const SizedBox.shrink(),
        ),
      ],
    );
  }
}
