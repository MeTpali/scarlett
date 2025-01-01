import 'package:freezed_annotation/freezed_annotation.dart';

import '../hero_rate_model/hero_rate_model.dart';

part 'pick_model.freezed.dart';

@freezed
class PickModel with _$PickModel {
  const factory PickModel({
    @Default([]) List<HeroRateModel> radiant,
    @Default([]) List<HeroRateModel> dire,
    @Default(50.0) double radiantRate,
    @Default(50.0) double direRate,
  }) = _PickModel;
}
