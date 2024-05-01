import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:topg/topg.dart';

part 'log_model.freezed.dart';

@freezed
class LogModel with _$LogModel {
  @Assert('messages.length > 0', 'Message list should not be empty')
  const factory LogModel.resolved({
    required List<MessageModel> messages,
  }) = _ResolvedLogModel;

  const factory LogModel.empty() = _EmptyLogModel;

  const factory LogModel.idle() = _IdleLogModel;
}
