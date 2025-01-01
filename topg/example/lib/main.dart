import 'package:example/src/modal_screen.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';
import 'package:topg/topg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TopG.init();
  await ScarlettLocale.init();
  runApp(
    const TopG(
      child: TopGExampleApp(),
    ),
  );
}

class TopGExampleApp extends StatelessWidget {
  const TopGExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: theme.colorScheme,
      ),
      home: const ModalScreen(),
    );
  }
}
