import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:i18n/l10n/app_localizations.dart';

void main() {
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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Testing app'),
        ),
        body: Column(
          children: [
            const Expanded(child: SizedBox()),
            Text(S.of(context).pushCount),
          ],
        ),
      );
}
