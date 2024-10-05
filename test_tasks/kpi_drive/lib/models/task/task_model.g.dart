// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      name: json['name'] as String,
      id: (json['indicator_to_mo_id'] as num).toInt(),
      folderId: (json['parent_id'] as num).toInt(),
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'indicator_to_mo_id': instance.id,
      'parent_id': instance.folderId,
      'order': instance.order,
    };
