// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultsTestResultsModelImpl _$$ResultsTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultsTestResultsModelImpl(
      answersList: (json['test'] as List<dynamic>)
          .map((e) => TestAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctAnswers: (json['total-correct-answers'] as num).toInt(),
      incorrectAnswers: (json['total-incorrect-answers'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResultsTestResultsModelImplToJson(
        _$ResultsTestResultsModelImpl instance) =>
    <String, dynamic>{
      'test': instance.answersList,
      'total-correct-answers': instance.correctAnswers,
      'total-incorrect-answers': instance.incorrectAnswers,
      'runtimeType': instance.$type,
    };

_$LoadingTestResultsModelImpl _$$LoadingTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoadingTestResultsModelImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingTestResultsModelImplToJson(
        _$LoadingTestResultsModelImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BadTestResultsModelImpl _$$BadTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BadTestResultsModelImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BadTestResultsModelImplToJson(
        _$BadTestResultsModelImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ErrorTestResultsModelImpl _$$ErrorTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorTestResultsModelImpl(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorTestResultsModelImplToJson(
        _$ErrorTestResultsModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$TestAnswerModelImpl _$$TestAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TestAnswerModelImpl(
      question: json['question'] as String,
      answer: json['answer'] as String,
      correctAnswer: json['correct-answer'] as String,
    );

Map<String, dynamic> _$$TestAnswerModelImplToJson(
        _$TestAnswerModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'correct-answer': instance.correctAnswer,
    };
