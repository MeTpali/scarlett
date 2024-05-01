import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/chat/chat_notifier.dart';
import '../features/connection/connection_settings_notifier.dart';
import '../features/log/log_notifier.dart';
import '../features/log/log_provider.dart';
import '../models/chat_model.dart';
import '../models/connection_settings.dart';
import '../models/log_model.dart';
import 'di.dart';

abstract class SocketChatDi {
  static final chatNotifier =
      StateNotifierProvider.autoDispose<ChatNotifier, ChatModel>(
    (ref) => ChatNotifier(logProvider: getIt.get<LogProvider>()),
  );

  static final connectionSettingsNotifier = StateNotifierProvider.autoDispose<
      ConnectionSettingsNotifier, ConnectionSettings>(
    (ref) => ConnectionSettingsNotifier(),
  );

  static final logNotifier =
      StateNotifierProvider.autoDispose<LogNotifier, LogModel>(
    (ref) => LogNotifier(
      connectionSettingsNotifier:
          ref.watch(connectionSettingsNotifier.notifier),
      logProvider: getIt.get<LogProvider>(),
    )..init(),
  );
}
