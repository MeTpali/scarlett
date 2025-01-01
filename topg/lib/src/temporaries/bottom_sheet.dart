import 'package:flutter/material.dart';

class TopGBottomSheet extends StatelessWidget {
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final bool hasDragHandle;
  final bool onTop;
  const TopGBottomSheet({
    this.borderRadius,
    this.contentPadding,
    this.child,
    this.onTop = false,
    this.hasDragHandle = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _borderRadius = borderRadius ??
        BorderRadius.vertical(
          top: onTop ? Radius.zero : const Radius.circular(10),
          bottom: !onTop ? Radius.zero : const Radius.circular(10),
        );

    return Material(
      borderRadius: _borderRadius,
      child: Column(
        children: onTop
            ? [
                if (child != null) Expanded(child: child!),
              ].reversed.toList()
            : [
                if (child != null) Expanded(child: child!),
              ],
      ),
    );
  }
}
