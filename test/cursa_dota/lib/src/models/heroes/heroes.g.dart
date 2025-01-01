// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heroes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeroesImpl _$$HeroesImplFromJson(Map<String, dynamic> json) => _$HeroesImpl(
      heroes: (json['heroes'] as List<dynamic>)
          .map((e) => HeroModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeroesImplToJson(_$HeroesImpl instance) =>
    <String, dynamic>{
      'heroes': instance.heroes,
    };
