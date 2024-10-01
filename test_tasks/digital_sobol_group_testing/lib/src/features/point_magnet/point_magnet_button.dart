import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/figure_di.dart';
import '../../theme/figure_drawer_theme.dart';

class PointMagnetButton extends ConsumerWidget {
  const PointMagnetButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = FigureDrawerTheme.of(context);
    final colors = theme.colors;
    final magnet = ref.watch(FigureDi.pointMagnet);
    final magnetNotifier = ref.watch(FigureDi.pointMagnet.notifier);

    return ElevatedButton(
      onPressed: () {
        magnet.map(
          magnetize: (_) {
            magnetNotifier.demagnetize();
          },
          demagnetize: (_) {
            magnetNotifier.magnetize(theme.grid.step);
          },
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(11),
        backgroundColor: colors.mainWhite,
        foregroundColor: colors.midGrey,
        elevation: 3,
      ),
      child: const Icon(Icons.tag_rounded),
    );
  }
}
