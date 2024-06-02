import 'package:freezed_annotation/freezed_annotation.dart';

import '../heroes/hero_model.dart';

part 'update_hero_model.freezed.dart';

@freezed
class UpdateHeroModel with _$UpdateHeroModel {
  const factory UpdateHeroModel({
    @Default(0) int id,
    HeroModel? hero,
    @Default('') String name,
    @Default('') String icon,
  }) = _UpdateHeroModel;
}
