import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc_test/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) {
          final service = SexService();
          final cubit = SexCubit(service: service)..init();
          return cubit;
        },
        child: const SexPage(),
      ),
    );
  }
}

class SexPage extends StatelessWidget {
  const SexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SexCubit, SexState>(
      builder: (context, state) => Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(state.message),
              ElevatedButton(
                onPressed: () {
                  context.read<SexCubit>().sendSex();
                },
                child: Text('press'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
