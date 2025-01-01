// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
class MetaModel with _$MetaModel {
  const factory MetaModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'winrate') required String winrate,
    @JsonKey(name: 'matches_played') required int matchesPlayed,
    @JsonKey(name: 'disadvantage') required String disadvantage,
    @JsonKey(name: 'hero1_id') required int hero1Id,
    @JsonKey(name: 'hero2_id') required int hero2Id,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
