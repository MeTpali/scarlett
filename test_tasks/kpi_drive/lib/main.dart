import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kpi_drive/routes/router.dart';
import 'package:kpi_drive/theme/kpi_theme.dart';

import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await KpiThemeProvider.init();

  runApp(
    ProviderScope(
      child: KpiThemeProvider(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = KpiRouter();

  @override
  Widget build(BuildContext context) {
    final theme = KpiTheme.of(context);
    final colorScheme = theme.colorScheme;
    return MaterialApp.router(
      title: 'Kpi Drive Test Task',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
        appBarTheme: theme.appBarTheme,
      ),
      routerConfig: router.config(),
    );
  }
}
