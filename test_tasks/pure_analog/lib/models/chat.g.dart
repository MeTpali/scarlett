// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      avatarId: (json['avatar_id'] as num).toInt(),
      userId: json['user_id'] as String,
      hasStory: json['has_story'] as bool,
      lastMessage: PureMessageModel.fromJson(
          json['last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'avatar_id': instance.avatarId,
      'user_id': instance.userId,
      'has_story': instance.hasStory,
      'last_message': instance.lastMessage,
    };
