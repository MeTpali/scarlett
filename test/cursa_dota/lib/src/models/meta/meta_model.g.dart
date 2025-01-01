// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaModelImpl _$$MetaModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaModelImpl(
      id: (json['id'] as num).toInt(),
      winrate: json['winrate'] as String,
      matchesPlayed: (json['matches_played'] as num).toInt(),
      disadvantage: json['disadvantage'] as String,
      hero1Id: (json['hero1_id'] as num).toInt(),
      hero2Id: (json['hero2_id'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaModelImplToJson(_$MetaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'winrate': instance.winrate,
      'matches_played': instance.matchesPlayed,
      'disadvantage': instance.disadvantage,
      'hero1_id': instance.hero1Id,
      'hero2_id': instance.hero2Id,
    };
