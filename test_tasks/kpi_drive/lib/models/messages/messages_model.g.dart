// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessagesModelImpl _$$MessagesModelImplFromJson(Map<String, dynamic> json) =>
    _$MessagesModelImpl(
      error:
          (json['error'] as List<dynamic>?)?.map((e) => e as String).toList(),
      warning:
          (json['warning'] as List<dynamic>?)?.map((e) => e as String).toList(),
      info: (json['info'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MessagesModelImplToJson(_$MessagesModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'warning': instance.warning,
      'info': instance.info,
    };
