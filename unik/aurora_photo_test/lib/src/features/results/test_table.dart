import 'package:flutter/material.dart';

import '../../theme/constants/types.dart';
import '../../theme/topg_theme.dart';

class TestTableRow extends StatelessWidget {
  final List<Widget> cells;
  const TestTableRow({
    required this.cells,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: [
          for (final cell in cells)
            TestTableCellWrapper(
              child: cell,
            ),
        ],
      );
}

class TestTableCellWrapper extends StatelessWidget {
  final Widget? child;
  final TopGType type;
  const TestTableCellWrapper({
    required this.child,
    this.type = TopGType.highlight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final settingsTheme = theme.settings;

    return Expanded(
      child: SizedBox(
        height: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: settingsTheme.tableColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
