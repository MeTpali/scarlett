import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class PureMessageModel with _$PureMessageModel {
  factory PureMessageModel({
    @JsonKey(name: 'timestamp') required DateTime timestamp,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'is_read') required bool isRead,
    @JsonKey(name: 'is_my') required bool isMy,
  }) = _PureMessageModel;

  factory PureMessageModel.fromJson(Map<String, dynamic> json) =>
      _$PureMessageModelFromJson(json);
}
