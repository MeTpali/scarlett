import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pure_analog/models/chat.dart';

part 'chats.freezed.dart';

@freezed
class ChatsModel with _$ChatsModel {
  factory ChatsModel.resolved({
    required List<ChatModel> chats,
  }) = _ChatsModelResolved;

  factory ChatsModel.loading() = _ChatsModelLoading;

  factory ChatsModel.error({String? message}) = _ChatsModelError;
}
