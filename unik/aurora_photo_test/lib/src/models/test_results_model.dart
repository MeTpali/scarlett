import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_results_model.freezed.dart';
part 'test_results_model.g.dart';

@freezed
class TestResultsModel with _$TestResultsModel {
  const factory TestResultsModel.results({
    @JsonKey(name: 'test') required List<TestAnswerModel> answersList,
    @JsonKey(name: 'total-correct-answers') required int correctAnswers,
    @JsonKey(name: 'total-incorrect-answers') required int incorrectAnswers,
  }) = _ResultsTestResultsModel;

  const factory TestResultsModel.loading() = _LoadingTestResultsModel;

  const factory TestResultsModel.bad() = _BadTestResultsModel;

  const factory TestResultsModel.error({String? message}) =
      _ErrorTestResultsModel;

  factory TestResultsModel.fromJson(Map<String, dynamic> json) =>
      _$TestResultsModelFromJson(json);
}

@freezed
class TestAnswerModel with _$TestAnswerModel {
  const factory TestAnswerModel({
    @JsonKey(name: 'question') required String question,
    @JsonKey(name: 'answer') required String answer,
    @JsonKey(name: 'correct-answer') required String correctAnswer,
  }) = _TestAnswerModel;

  factory TestAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$TestAnswerModelFromJson(json);
}
