import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pure_analog/features/chats/chats_notifier.dart';
import 'package:pure_analog/features/dialog/notifier.dart';
import 'package:pure_analog/features/incognito/incognito_notifier.dart';
import 'package:pure_analog/models/chats.dart';
import 'package:pure_analog/models/dialog.dart';
import 'package:pure_analog/models/incognito_state.dart';

abstract class PureAnalogDi {
  static final incognitoProvider =
      StateNotifierProvider.autoDispose<IncognitoNotifier, IncognitoState>(
    (ref) => IncognitoNotifier(),
  );

  static final chatsProvider =
      StateNotifierProvider.autoDispose<ChatsNotifier, ChatsModel>(
    (ref) => ChatsNotifier()..init(),
  );

  static final dialogProvider =
      StateNotifierProvider.autoDispose<DialogNotifier, DialogModel>(
    (ref) => DialogNotifier(),
  );
}
