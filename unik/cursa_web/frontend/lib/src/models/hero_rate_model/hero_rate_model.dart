import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero_rate_model.freezed.dart';

@freezed
class HeroRateModel with _$HeroRateModel {
  const factory HeroRateModel({
    required int id,
    required String name,
    required String url,
    required double rate,
  }) = _HeroRateModel;
}
