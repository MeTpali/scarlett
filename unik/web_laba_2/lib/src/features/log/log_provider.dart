import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class LogProvider {
  LogProvider();

  final _sharedPreferences = SharedPreferences.getInstance();

  Future<void> logMessage(
      {required String key, required String message, String? nickname}) async {
    final nick = nickname ?? '_Knownaim_';
    final List<String> log =
        (await _sharedPreferences).getStringList(key) ?? [];

    if (log.length == 5) {
      log.removeAt(0);
    }

    log.add('$nick: $message');
    await (await _sharedPreferences).setStringList(key, log);
  }

  Future<List<String>?> getLog(String nickname) async {
    final log = (await _sharedPreferences).getStringList(nickname);
    return log;
  }
}
