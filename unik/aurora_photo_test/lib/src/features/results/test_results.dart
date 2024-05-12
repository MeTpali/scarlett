import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/photo_test_di.dart';

class TestResultsWidget extends ConsumerWidget {
  const TestResultsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testResults = ref.watch(PhotoTestDi.testResultsProvider);
    final result = testResults.map(
      results: (_) => 'Успех',
      loading: (_) => 'Загрузка',
    );
    return Center(
      child: Text(result),
    );
  }
}
