import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_results_model.freezed.dart';

@freezed
class TestResultsModel with _$TestResultsModel {
  const factory TestResultsModel.results() = _ResultsTestResultsModel;

  const factory TestResultsModel.loading() = _LoadingTestResultsModel;
}
