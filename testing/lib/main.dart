import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ScarlettLocalization(
        builder: (locale) => MaterialApp(
          localizationsDelegates: S.localizationDelegates,
          locale: locale,
          home: const TestingScreen(),
        ),
      );
}

class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) => TopG(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Testing app'),
          ),
          body: Column(
            children: [
              const Expanded(child: SizedBox()),
              Text(S.of(context).pushCount),
            ],
          ),
        ),
      );
}
