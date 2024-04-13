import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TopG.init();
  await ScarlettLocalization.init();
  runApp(const TopG(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    return ScarlettLocalization(
      builder: (locale) => MaterialApp(
        localizationsDelegates: S.localizationDelegates,
        supportedLocales: S.supportedLocales,
        locale: locale,
        theme: ThemeData(
          colorScheme: theme.colorScheme,
        ),
        home: const TestingScreen(),
      ),
    );
  }
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Card(
                child: ListTile(
                  title: Text(S.of(context).localeName),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: TextButton(
                child: Text(
                  S.of(context).localeName,
                ),
                onPressed: () async {
                  await TopG.toggleThemeOf(context);
                  await ScarlettLocalization.switchLocaleOf(context);
                },
              ),
            ),
          ],
        ),
      );
}
