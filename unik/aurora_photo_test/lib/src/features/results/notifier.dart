import 'dart:convert';

import 'package:flutter/material.dart';
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

  Future<void> sendPhoto(String path) async {
    final response = await _testCheckService.sendPhoto(path);
    // await Future.delayed(const Duration(seconds: 5));
    final data = await rootBundle.loadString('assets/test.json');
    final jsonResult = json.decode(data);
    state = TestResultsModel.fromJson(jsonResult as Map<String, dynamic>);
  }

  void toLoading() => state = const TestResultsModel.loading();
}
