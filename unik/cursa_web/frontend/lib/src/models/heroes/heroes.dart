import 'package:freezed_annotation/freezed_annotation.dart';

import 'hero_model.dart';

part 'heroes.freezed.dart';
part 'heroes.g.dart';

@freezed
class Heroes with _$Heroes {
  const factory Heroes({
    @JsonKey(name: 'heroes') required List<HeroModel> heroes,
  }) = _Heroes;

  factory Heroes.fromJson(Map<String, dynamic> json) => _$HeroesFromJson(json);
}
