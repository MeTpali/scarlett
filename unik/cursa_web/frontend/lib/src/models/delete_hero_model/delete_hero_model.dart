import 'package:freezed_annotation/freezed_annotation.dart';

import '../heroes/hero_model.dart';

part 'delete_hero_model.freezed.dart';

@freezed
class DeleteHeroModel with _$DeleteHeroModel {
  const factory DeleteHeroModel({
    HeroModel? hero,
  }) = _DeleteHeroModel;
}
