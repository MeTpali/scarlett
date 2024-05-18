import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

import '../../models/test_results_model.dart';
import '../../theme/constants/constants.dart';
import 'test_table.dart';

class TestResultsWidget extends StatelessWidget {
  final List<TestAnswerModel> answers;
  final int correctAnswers;
  final int incorrectAnswers;
  const TestResultsWidget({
    required this.answers,
    required this.correctAnswers,
    required this.incorrectAnswers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final percent = double.parse(
        (correctAnswers / (correctAnswers + incorrectAnswers))
            .toStringAsPrecision(2));
    final score =
        (correctAnswers / (correctAnswers + incorrectAnswers) * 100).round();

    final fillColor = percent < 0.5
        ? TopGColors.yRed
        : percent < 0.85
            ? TopGColors.yYellow
            : TopGColors.yGreen;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${S.of(context).result}:',
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$score%',
                      style: TextStyle(color: fillColor, fontSize: 30),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              TestTableRow(
                cells: [
                  Text(
                    '${S.of(context).questionNumber}',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '${S.of(context).selectedAnswer}',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '${S.of(context).rightAnswer}',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              for (final answer in answers)
                TestTableRow(
                  cells: [
                    Text(
                      answer.question,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      answer.answer,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      answer.correctAnswer,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
