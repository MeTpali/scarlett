import 'dart:io';

import 'package:flutter/foundation.dart';

class NameSocket {
  static Future<void> runSocket() async {
    final socket = await Socket.connect('0.0.0.0', 3000);

    socket.listen(
      (Uint8List data) {
        final response = String.fromCharCodes(data);
        print('Client: $response');
      },
      onError: (error) {
        print('Client: $error');
        socket.destroy();
      },
      onDone: () {
        print('Client: server left');
        socket.destroy();
      },
    );
  }
}
