import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../models/connection_settings.dart';
import '../../models/log_model.dart';
import '../connection/connection_settings_notifier.dart';
import 'log_provider.dart';

class LogNotifier extends StateNotifier<LogModel> {
  final ConnectionSettingsNotifier _connectionSettingsNotifier;
  final LogProvider _logProvider;
  StreamSubscription<ConnectionSettings>? _subscription;
  LogNotifier({
    required ConnectionSettingsNotifier connectionSettingsNotifier,
    required LogProvider logProvider,
  })  : _connectionSettingsNotifier = connectionSettingsNotifier,
        _logProvider = logProvider,
        super(const LogModel.idle());

  void init() =>
      _subscription ??= _connectionSettingsNotifier.stream.listen(_onEvent);

  Future<void> _onEvent(ConnectionSettings event) async {
    if (event.nickname.isEmpty) {
      state = const LogModel.idle();
      return;
    }

    final messages = await _logProvider.getLog(event.nickname);

    if (messages == null || messages.isEmpty) {
      state = const LogModel.empty();
      return;
    }

    final newList = <MessageModel>[];

    for (final message in messages) {
      final messageComponents = message.split(': ');
      if (messageComponents.length < 2) {
        continue;
      }

      final nick = messageComponents[0].trim();
      messageComponents.removeAt(0);
      final text = messageComponents.join(': ');
      final author = event.nickname == nick
          ? MessageAuthor.you
          : MessageAuthor.interlocutor;

      final messageModel = MessageModel(
        author: author,
        name: nick,
        message: text,
        date: null,
      );

      newList.add(messageModel);
    }

    state = LogModel.resolved(messages: newList);
  }

  @override
  Future<void> dispose() async {
    await _subscription?.cancel();
    super.dispose();
  }
}
