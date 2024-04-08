import 'dart:io';
import 'dart:typed_data';

import 'package:riverpod/riverpod.dart';
import 'package:web_laba_2/features/models/socket_model.dart';

class SocketNotifier extends StateNotifier<SocketModel> {
  SocketNotifier() : super(const SocketModel.idle());
  Socket? socket;

  Future<void> init() async {
    state = const SocketModel.loading();
    socket ??= await Socket.connect('192.168.0.101', 8080);
    state = const SocketModel.connected();
  }

  void startListening() {
    socket?.listen(
      (Uint8List data) {
        final response = String.fromCharCodes(data);
        state = SocketModel.data(data: response);
      },
      onError: (error) {
        state = SocketModel.error(error: error);
        socket?.destroy();
      },
      onDone: () {
        state = const SocketModel.done(message: 'Server left');
        socket?.destroy();
      },
    );
  }

  @override
  void dispose() {
    socket?.destroy();
    super.dispose();
  }
}
