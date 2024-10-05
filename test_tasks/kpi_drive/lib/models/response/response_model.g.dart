// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelSuccessImpl _$$ResponseModelSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseModelSuccessImpl(
      message: MessagesModel.fromJson(json['MESSAGES'] as Map<String, dynamic>),
      data: json['DATA'],
      status: json['STATUS'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResponseModelSuccessImplToJson(
        _$ResponseModelSuccessImpl instance) =>
    <String, dynamic>{
      'MESSAGES': instance.message,
      'DATA': instance.data,
      'STATUS': instance.status,
      'runtimeType': instance.$type,
    };

_$ResponseModelErrorImpl _$$ResponseModelErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseModelErrorImpl(
      message: MessagesModel.fromJson(json['MESSAGES'] as Map<String, dynamic>),
      status: json['STATUS'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResponseModelErrorImplToJson(
        _$ResponseModelErrorImpl instance) =>
    <String, dynamic>{
      'MESSAGES': instance.message,
      'STATUS': instance.status,
      'runtimeType': instance.$type,
    };
