import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/s.dart';

import '../di/photo_test_di.dart';
import '../features/results/test_parameters_widget.dart';
import '../features/results/test_results.dart';
import '../features/settings/button.dart';
import '../theme/topg_theme.dart';
import 'app_router/app_router.dart';

@RoutePage()
class TestResultsScreen extends ConsumerWidget {
  const TestResultsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testResultNotifier =
        ref.watch(PhotoTestDi.testResultsProvider.notifier);
    final testResults = ref.watch(PhotoTestDi.testResultsProvider);
    final theme = TopGTheme.of(context);
    final settingsTheme = theme.settings;
    return Scaffold(
      backgroundColor: settingsTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: settingsTheme.backgroundColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: testResults.map(
              results: (results) => TestResultsWidget(
                answers: results.answersList,
                correctAnswers: results.correctAnswers,
                incorrectAnswers: results.incorrectAnswers,
              ),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (error) => Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  child: Text('${S.of(context).error}: ${error.message}')),
              bad: (_) => Center(child: Text(S.of(context).tryAgain)),
              parameters: (_) => const Center(
                child: TestParametersWidget(),
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: IconButton(
                    onPressed: () {
                      unawaited(context.router.maybePop());
                    },
                    icon: Icon(
                      size: 40,
                      Icons.chevron_left,
                      color: settingsTheme.buttonColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SettingsButton(
                    onTap: () async {
                      await context.router.push(const SettingsRoute());
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
