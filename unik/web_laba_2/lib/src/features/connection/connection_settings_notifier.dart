import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/connection_settings.dart';

class ConnectionSettingsNotifier extends StateNotifier<ConnectionSettings> {
  ConnectionSettingsNotifier() : super(const ConnectionSettings.uncompleted());

  void updateIp(String newIp) {
    if (_isProbabalyCompleted(state.nickname, newIp, state.port.toString())) {
      state = ConnectionSettings.completed(
        nickname: state.nickname,
        host: newIp,
        port: int.parse(state.port.toString()),
      );
    } else {
      state = ConnectionSettings.uncompleted(
        nickname: state.nickname,
        host: newIp,
        port: state.port.toString(),
      );
    }
  }

  void updatePort(String newPort) {
    if (_isProbabalyCompleted(state.nickname, state.host, newPort)) {
      state = ConnectionSettings.completed(
        nickname: state.nickname,
        host: state.host,
        port: int.parse(newPort),
      );
    } else {
      state = ConnectionSettings.uncompleted(
        nickname: state.nickname,
        host: state.host,
        port: newPort,
      );
    }
  }

  void updateNickname(String nickname) {
    if (_isProbabalyCompleted(nickname, state.host, state.port.toString())) {
      state = ConnectionSettings.completed(
        nickname: nickname,
        host: state.host,
        port: int.parse(state.port.toString()),
      );
    } else {
      state = ConnectionSettings.uncompleted(
        nickname: nickname,
        host: state.host,
        port: state.port.toString(),
      );
    }
  }

  bool _isProbabalyCompleted(String nickname, String host, String port) {
    if (nickname.isEmpty) {
      return false;
    }

    final numbers = host.split('.');
    if (numbers.length != 4) {
      return false;
    }

    for (final value in numbers) {
      if (value.length > 3) {
        return false;
      }
      final val = int.tryParse(value);
      if (val == null) {
        return false;
      }
    }

    final val = int.tryParse(port);
    if (val == null) {
      return false;
    }
    return true;
  }
}
