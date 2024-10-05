import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_model.freezed.dart';
part 'messages_model.g.dart';

@freezed
class MessagesModel with _$MessagesModel {
  const factory MessagesModel({
    @JsonKey(name: 'error') List<String>? error,
    @JsonKey(name: 'warning') List<String>? warning,
    @JsonKey(name: 'info') List<String>? info,
  }) = _MessagesModel;

  factory MessagesModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesModelFromJson(json);
}
