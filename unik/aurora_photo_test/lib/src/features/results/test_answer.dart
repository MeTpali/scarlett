import 'package:flutter/material.dart';

import '../../theme/constants/types.dart';

class TestResultRow extends StatelessWidget {
  final List<Widget> cells;
  const TestResultRow({
    required this.cells,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: [
          for (final cell in cells)
            ResultsCellWrapper(
              child: cell,
            ),
          // ResultsCellWrapper(
          //   child: Text(
          //     answer.question,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // ResultsCellWrapper(
          //   child: Text(
          //     answer.answer,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // ResultsCellWrapper(
          //   child: Text(
          //     answer.correctAnswer,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      );
}

class ResultsCellWrapper extends StatelessWidget {
  final Widget? child;
  final TopGType type;
  const ResultsCellWrapper({
    required this.child,
    this.type = TopGType.highlight,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: SizedBox(
          height: 40,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              color: type.resolveColor(context),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
              child: Center(child: child),
            ),
          ),
        ),
      );
}
