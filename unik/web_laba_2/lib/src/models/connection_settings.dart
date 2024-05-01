import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_settings.freezed.dart';

@freezed
class ConnectionSettings with _$ConnectionSettings {
  const factory ConnectionSettings.uncompleted({
    @Default('') String nickname,
    @Default('') String host,
    @Default('') String port,
  }) = _ConnectionSettingsUncompleted;

  const factory ConnectionSettings.completed({
    required String nickname,
    required String host,
    required int port,
  }) = _ConnectionSettingsCompleted;
}
