import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_laba_2/features/di/di.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final socketModel = ref.watch(NameSocketDi.nameSocket);
    final message = socketModel.map<String>(
      idle: (_) => 'Trying to connect',
      connected: (model) => 'Connected',
      loading: (_) => "Loading...",
      data: (model) => model.data,
      error: (model) => model.error,
      done: (model) => model.message,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Sex"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.connect_without_contact),
      // ),
    );
  }
}
