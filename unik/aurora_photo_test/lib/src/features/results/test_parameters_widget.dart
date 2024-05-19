import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/photo_test_di.dart';
import '../../theme/constants/types.dart';
import '../main_button/main_button.dart';

class TestParametersWidget extends ConsumerStatefulWidget {
  const TestParametersWidget({super.key});

  @override
  ConsumerState<TestParametersWidget> createState() =>
      _TestParametersWidgetState();
}

class _TestParametersWidgetState extends ConsumerState<TestParametersWidget> {
  String testId = '';
  @override
  Widget build(BuildContext context) {
    final testResultsNotifier =
        ref.watch(PhotoTestDi.testResultsProvider.notifier);
    final testResults = ref.watch(PhotoTestDi.testResultsProvider);
    final path = testResults.maybeMap(
      orElse: () => '',
      parameters: (params) => params.path,
    );
    final buttonType = testId.isEmpty ? TopGType.disabled : TopGType.action;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Test id',
            ),
            onChanged: (value) => setState(() {
              testId = value;
            }),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: MainButton(
            title: const Text('Отправить'),
            onPressed: () async {
              await testResultsNotifier.sendPhoto(path: path, testId: testId);
            },
            type: buttonType,
          ),
        ),
      ],
    );
  }
}
