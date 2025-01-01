// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_meta_model.freezed.dart';

@freezed
class AddMetaModel with _$AddMetaModel {
  const factory AddMetaModel({
    @Default('') String winrate,
    @Default(0) int matchesPlayed,
    @Default('') String disadvantage,
    @Default(0) int hero1Id,
    @Default(0) int hero2Id,
  }) = _AddMetaModel;
}
