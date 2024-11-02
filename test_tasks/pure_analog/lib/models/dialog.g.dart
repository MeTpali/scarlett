// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DialogModelResolvedImpl _$$DialogModelResolvedImplFromJson(
        Map<String, dynamic> json) =>
    _$DialogModelResolvedImpl(
      avatarId: (json['avatar_id'] as num).toInt(),
      userId: json['user_id'] as String,
      hasStory: json['has_story'] as bool,
      temptationCount: (json['temptation_count'] as num).toInt(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => PureMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DialogModelResolvedImplToJson(
        _$DialogModelResolvedImpl instance) =>
    <String, dynamic>{
      'avatar_id': instance.avatarId,
      'user_id': instance.userId,
      'has_story': instance.hasStory,
      'temptation_count': instance.temptationCount,
      'messages': instance.messages,
      'runtimeType': instance.$type,
    };

_$DialogModelErrorImpl _$$DialogModelErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$DialogModelErrorImpl(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DialogModelErrorImplToJson(
        _$DialogModelErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$DialogModelLoadingImpl _$$DialogModelLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$DialogModelLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DialogModelLoadingImplToJson(
        _$DialogModelLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
