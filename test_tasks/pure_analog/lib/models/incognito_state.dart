import 'package:freezed_annotation/freezed_annotation.dart';

part 'incognito_state.freezed.dart';

@freezed
class IncognitoState with _$IncognitoState {
  const factory IncognitoState.active({
    required int left,
  }) = _IncognitoActiveState;

  const factory IncognitoState.inactive({
    required int left,
  }) = _IncognitoInactiveState;
}
