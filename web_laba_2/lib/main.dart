import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/routes/main_screen.dart';

Future<void> main() async {
  // final socket = await Socket.connect('192.168.0.101', 3000);

  // socket.listen(
  //   (Uint8List data) {
  //     final response = String.fromCharCodes(data);
  //     print(response);
  //   },
  //   onError: (error) {
  //     print(2);
  //     socket.destroy();
  //   },
  //   onDone: () {
  //     print(3);
  //     socket.destroy();
  //   },
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProviderScope(child: MyHomePage()),
    );
  }
}
