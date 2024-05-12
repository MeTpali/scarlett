import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/test_results_model.dart';
import '../../services/test_check.dart';

class TestResultsNotifier extends StateNotifier<TestResultsModel> {
  final TestCheckService _testCheckService;
  TestResultsNotifier({
    required TestCheckService testCheckService,
  })  : _testCheckService = testCheckService,
        super(const TestResultsModel.loading());

  Future<void> sendPhoto(String path) async {
    // final response = await _testCheckService.sendPhoto(path);
    // ignore: inference_failure_on_instance_creation
    await Future.delayed(const Duration(seconds: 5));
    state = const TestResultsModel.results();
  }
}
