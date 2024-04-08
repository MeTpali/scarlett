import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/figure_di.dart';
import '../../theme/figure_drawer_theme.dart';
import '../utils/figure_drawer_utils.dart';
import 'widget.dart';

class FigureDrawer extends ConsumerWidget {
  final Offset position;
  const FigureDrawer({
    super.key,
    required this.position,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = FigureDrawerTheme.of(context);
    return Listener(
      onPointerDown: (event) => _onPointerDown(event, ref),
      onPointerMove: (event) => _onPointerMove(event, ref, theme.grid.step),
      onPointerUp: (event) => _onPointerUp(event, ref, theme.grid.step),
      child: const FigureDrawerWidget(),
    );
  }

  void _onPointerDown(PointerDownEvent event, WidgetRef ref) {
    final pointerOffset = Offset(
      event.position.dx - position.dx,
      event.position.dy - position.dy,
    );

    ref.watch(FigureDi.gestureManager).onPointerDown(pointerOffset);
    ref.watch(FigureDi.marker.notifier).onPointerDown(pointerOffset);
  }

  void _onPointerMove(PointerMoveEvent event, WidgetRef ref, double gridStep) {
    final point = Point<double>(
      event.position.dx - position.dx,
      event.position.dy - position.dy,
    );
    var magnetPoint = point;

    final shouldMagnet = ref.watch(FigureDi.pointMagnet.notifier).shouldMagnet;
    if (shouldMagnet) {
      magnetPoint = FigureDrawerUtils.magnetToNearest(point, gridStep);
    }

    ref.watch(FigureDi.gestureManager).onPointerMove(
          Offset(magnetPoint.x, magnetPoint.y),
        );
    ref.watch(FigureDi.marker.notifier).onPointerMove(
          Offset(point.x, point.y),
        );
  }

  void _onPointerUp(PointerUpEvent event, WidgetRef ref, double gridStep) {
    final point = Point<double>(
      event.position.dx - position.dx,
      event.position.dy - position.dy,
    );

    var magnetPoint = point;

    final shouldMagnet = ref.watch(FigureDi.pointMagnet.notifier).shouldMagnet;
    if (shouldMagnet) {
      magnetPoint = FigureDrawerUtils.magnetToNearest(point, gridStep);
    }

    ref.watch(FigureDi.gestureManager).onPointerUp(
          Offset(magnetPoint.x, magnetPoint.y),
        );
    ref.watch(FigureDi.marker.notifier).onPointerUp();
  }
}
