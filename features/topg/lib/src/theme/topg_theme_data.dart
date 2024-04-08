import 'package:freezed_annotation/freezed_annotation.dart';

part 'topg_theme_data.freezed.dart';

@freezed
class TopGThemeData with _$TopGThemeData {
  const factory TopGThemeData.light() = _TopGThemeDataLight;

  const factory TopGThemeData.dark() = _TopGThemeDataDark;
}
