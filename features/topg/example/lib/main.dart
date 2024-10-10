import 'package:example/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScarlettLocalization.init();
  await TopG.init();
  runApp(
    const TopG(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScarlettLocalization(builder: (locale) {
      return MaterialApp(
        title: 'Flutter Demo',
        locale: locale,
        supportedLocales: S.supportedLocales,
        localizationsDelegates: S.localizationDelegates,
        theme: ThemeData(
          colorScheme: TopGColorScheme.custom,
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          SettingsButton(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SettingsScreen(),
              ),
            );
          })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
