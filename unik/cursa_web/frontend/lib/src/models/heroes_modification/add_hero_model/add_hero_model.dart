import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_hero_model.freezed.dart';

@freezed
class AddHeroModel with _$AddHeroModel {
  const factory AddHeroModel({
    @Default('') String name,
    @Default('') String icon,
  }) = _AddHeroModel;
}
