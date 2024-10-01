import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/figure_di.dart';
import '../../theme/figure_drawer_theme.dart';

enum ButtonSide {
  right,
  left,
}

class FigureHistoryButton extends ConsumerWidget {
  const FigureHistoryButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = FigureDrawerTheme.of(context).colors;

    final version = ref.watch(FigureDi.figureHistory);
    final leftIsActive = !version.isInitial;
    final rightIsActive = !version.isLatest;

    return SizedBox(
      height: 31,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SideButton(
            side: ButtonSide.left,
            onTap: () {
              ref.watch(FigureDi.figureHistory.notifier).backward();
            },
            isActive: leftIsActive,
          ),
          ColoredBox(
            color: colors.mainWhite,
            child: VerticalDivider(
              color: colors.lightGrey,
              indent: 9,
              endIndent: 9,
              width: 0.5,
            ),
          ),
          SideButton(
            side: ButtonSide.right,
            onTap: () {
              ref.watch(FigureDi.figureHistory.notifier).forward();
            },
            isActive: rightIsActive,
          ),
        ],
      ),
    );
  }
}

class SideButton extends StatelessWidget {
  final VoidCallback onTap;
  final ButtonSide side;
  final bool isActive;
  const SideButton({
    super.key,
    required this.side,
    required this.onTap,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FigureDrawerTheme.of(context);
    final colors = theme.colors;

    final icon = side == ButtonSide.right
        ? CupertinoIcons.arrowshape_turn_up_right_fill
        : CupertinoIcons.arrowshape_turn_up_left_fill;

    final rightRadius =
        side == ButtonSide.right ? const Radius.circular(5) : Radius.zero;
    final leftRadius =
        side == ButtonSide.left ? const Radius.circular(5) : Radius.zero;
    final borderRadius = BorderRadius.horizontal(
      right: rightRadius,
      left: leftRadius,
    );

    final iconColor = isActive ? colors.darkGrey : colors.lightGrey;

    return Material(
      borderRadius: borderRadius,
      child: InkWell(
        onTap: isActive ? onTap : null,
        splashColor: colors.lightGrey,
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Icon(
            icon,
            size: 20,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
