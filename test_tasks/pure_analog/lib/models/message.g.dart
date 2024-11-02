// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PureMessageModelImpl _$$PureMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PureMessageModelImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      text: json['text'] as String,
      isRead: json['is_read'] as bool,
      isMy: json['is_my'] as bool,
    );

Map<String, dynamic> _$$PureMessageModelImplToJson(
        _$PureMessageModelImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'text': instance.text,
      'is_read': instance.isRead,
      'is_my': instance.isMy,
    };
