import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:topg/topg.dart';

part 'chat_model.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: true)
class ChatModel with _$ChatModel {
  const factory ChatModel.loading() = _LoadingChatModel;

  const factory ChatModel.error({
    required String message,
  }) = _ErrorChatModel;

  const factory ChatModel.resolved({
    required String nickname,
    required List<MessageModel> messageList,
  }) = _ResolvedChatModel;

  const factory ChatModel.idle() = _IDLEChatModel;
}
