import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pure_analog/models/message.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class ChatModel with _$ChatModel {
  factory ChatModel({
    @JsonKey(name: 'avatar_id') required int avatarId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'has_story') required bool hasStory,
    @JsonKey(name: 'last_message') required PureMessageModel lastMessage,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
