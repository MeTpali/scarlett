import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pure_analog/models/incognito_state.dart';

class IncognitoNotifier extends StateNotifier<IncognitoState> {
  IncognitoNotifier() : super(const IncognitoState.inactive(left: 0));

  bool tryActivate() {
    if (state.left == 0) {
      return false;
    }

    state = IncognitoState.active(left: state.left - 1);
    return true;
  }

  void addMasks(int count) => state = state.copyWith(left: state.left + count);

  void deactivate() => state = IncognitoState.inactive(left: state.left);
}
