import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/test_results_model.dart';
import '../../services/test_check.dart';

class TestResultsNotifier extends StateNotifier<TestResultsModel> {
  final TestCheckService _testCheckService;
  TestResultsNotifier({
    required TestCheckService testCheckService,
  })  : _testCheckService = testCheckService,
        super(const TestResultsModel.loading());

  Future<void> sendPhoto({
    required String path,
    required String testId,
  }) async {
    final response =
        await _testCheckService.sendPhoto(path: path, testId: testId);
    // await Future.delayed(const Duration(seconds: 5));
    final data = await rootBundle.loadString('assets/test.json');
    final jsonResult = json.decode(data);
    state = TestResultsModel.fromJson(jsonResult as Map<String, dynamic>);
  }

  void setPath(String path) => state = TestResultsModel.parameters(path: path);

  void toLoading() => state = const TestResultsModel.loading();
}
