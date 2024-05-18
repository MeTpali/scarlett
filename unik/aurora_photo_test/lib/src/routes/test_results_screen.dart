import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        leading: IconButton(
          onPressed: () {
            testResultNotifier.toLoading();
            unawaited(context.router.maybePop());
          },
          icon: const Icon(Icons.chevron_left),
        ),
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: testResults.map(
        results: (results) => TestResultsWidget(
          answers: results.answersList,
          correctAnswers: results.correctAnswers,
          incorrectAnswers: results.incorrectAnswers,
        ),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        error: (error) => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('Ошибка: ${error.message}'),
          ),
        ),
        bad: (_) => const Center(child: Text('Перефотографируйте')),
        parameters: (_) => const Center(
          child: TestParametersWidget(),
        ),
      ),
    );
  }
}
