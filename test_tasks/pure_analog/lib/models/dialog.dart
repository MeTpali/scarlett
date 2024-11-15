import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pure_analog/models/message.dart';

part 'dialog.freezed.dart';
part 'dialog.g.dart';

@freezed
class DialogModel with _$DialogModel {
  factory DialogModel.resolved({
    @JsonKey(name: 'avatar_id') required int avatarId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'has_story') required bool hasStory,
    @JsonKey(name: 'temptation_count') required int temptationCount,
    @JsonKey(name: 'messages') required List<PureMessageModel> messages,
  }) = _DialogModelResolved;

  factory DialogModel.error({String? message}) = _DialogModelError;

  factory DialogModel.loading() = _DialogModelLoading;

  factory DialogModel.fromJson(Map<String, dynamic> json) =>
      _$DialogModelFromJson(json);
}
