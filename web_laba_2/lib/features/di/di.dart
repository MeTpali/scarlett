import 'package:riverpod/riverpod.dart';
import 'package:web_laba_2/features/models/socket_model.dart';

import '../routes/socket_notifier.dart';

class NameSocketDi {
  static final nameSocket =
      StateNotifierProvider.autoDispose<SocketNotifier, SocketModel>(
    (ref) => SocketNotifier()..init(),
  );
}
