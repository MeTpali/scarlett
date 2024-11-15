import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

class PureBottomSheet extends StatelessWidget {
  final Widget? title;
  final Widget? action;
  final Widget? child;
  final EdgeInsetsGeometry contentPadding;
  const PureBottomSheet({
    this.title,
    this.action,
    this.child,
    this.contentPadding = EdgeInsets.zero,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final topgTheme = TopGTheme.of(context);

    return Material(
      color: topgTheme.mode == TopGMode.dark
          ? const Color(0xFF393737)
          : TopGColors.softLightBlue,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 7,
      shadowColor: const Color(0xFF7446AC),
      child: Padding(
        padding: contentPadding,
        child: Column(
          children: [
            title == null && action == null
                ? const SizedBox.shrink()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        title ?? const SizedBox.shrink(),
                        const Spacer(),
                        action ?? const SizedBox.shrink(),
                      ],
                    ),
                  ),
            Expanded(
              child: child ?? const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
