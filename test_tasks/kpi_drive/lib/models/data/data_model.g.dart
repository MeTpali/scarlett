// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      page: (json['page'] as num).toInt(),
      pagesCount: (json['pages_count'] as num).toInt(),
      rowsCount: (json['rows_count'] as num).toInt(),
      rows: (json['rows'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pages_count': instance.pagesCount,
      'rows_count': instance.rowsCount,
      'rows': instance.rows,
    };
