import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pure_analog/routes/router.dart';
import 'package:topg/locale.dart';
import 'package:topg/topg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TopG.init();
  await ScarlettLocale.init();

  runApp(
    ProviderScope(
      child: TopG(
        child: PureApp(),
      ),
    ),
  );
}

class PureApp extends StatelessWidget {
  PureApp({super.key});

  final pureRouter = PureRouter();

  @override
  Widget build(BuildContext context) {
    final topgTheme = TopGTheme.of(context);
    return ScarlettLocale(
      builder: (locale) {
        return MaterialApp.router(
          title: 'Pure Analog',
          locale: locale,
          routerConfig: pureRouter.config(),
          supportedLocales: S.supportedLocales,
          localizationsDelegates: S.localizationDelegates,
          theme: ThemeData(
            colorScheme: topgTheme.colorScheme,
            cardTheme: topgTheme.cardTheme,
          ),
        );
      },
    );
  }
}
