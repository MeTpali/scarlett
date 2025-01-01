import 'package:diplom_denis/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/locale.dart';
import 'package:topg/topg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TopG.init();
  await ScarlettLocale.init();

  runApp(
    ProviderScope(
      child: TopG(
        child: ExamApp(),
      ),
    ),
  );
}

class ExamApp extends StatelessWidget {
  ExamApp({super.key});

  final examRouter = ExamRouter();

  @override
  Widget build(BuildContext context) {
    final topgTheme = TopGTheme.of(context);
    return ScarlettLocale(
      builder: (locale) {
        return MaterialApp.router(
          title: 'Test exams',
          locale: locale,
          routerConfig: examRouter.config(),
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
