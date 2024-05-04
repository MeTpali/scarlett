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
          actions: [
            SettingsButton(
              onTap: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute<SettingsView>(
                    builder: (context) => const Placeholder(),
                  ),
                );
              },
            ),
          ],
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
                child: const Text(''),
                onPressed: () async {
                  await TopG.toggleThemeOf(context);
                  await ScarlettLocalization.switchLocaleOf(context);
                },
              ),
            ),
            Image.network(
              'https://www.dotabuff.com/assets/heroes/dark-seer-be8d4bded6ce5e2eaab5dce2171c4d7486f9c20c880583ff8e22eab9c1176894.jpg',
              scale: 1.5,
            ),
          ],
        ),
      );
}
