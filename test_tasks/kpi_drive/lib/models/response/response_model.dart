import 'package:freezed_annotation/freezed_annotation.dart';

import '../messages/messages_model.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel.success({
    @JsonKey(name: 'MESSAGES') required MessagesModel message,
    @JsonKey(name: 'DATA') required dynamic data,
    @JsonKey(name: 'STATUS') required String status,
  }) = _ResponseModelSuccess;

  const factory ResponseModel.error({
    @JsonKey(name: 'MESSAGES') required MessagesModel message,
    @JsonKey(name: 'STATUS') required String status,
  }) = _ResponseModelError;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
