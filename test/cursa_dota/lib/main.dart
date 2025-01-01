import 'package:cursa_dota/src/features/server/address_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/locale.dart';
import 'package:topg/topg.dart';

import 'src/di/di.dart';
import 'src/routes/app_router/app_router.dart';

final ipNotifier = ServerIpNotifier();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await TopG.init();
  await ScarlettLocale.init();
  runApp(
    const ProviderScope(
      child: TopG(
        child: DotaCounterPickApp(),
      ),
    ),
  );
}

class DotaCounterPickApp extends StatefulWidget {
  const DotaCounterPickApp({super.key});

  @override
  State<DotaCounterPickApp> createState() => _DotaCounterPickAppState();
}

class _DotaCounterPickAppState extends State<DotaCounterPickApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final colorTheme = theme.colorScheme;
    return ScarlettLocale(
      builder: (locale) => MaterialApp.router(
        locale: locale,
        supportedLocales: S.supportedLocales,
        localizationsDelegates: S.localizationDelegates,
        theme: ThemeData(colorScheme: colorTheme),
        routerConfig: _router.config(),
      ),
    );
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }
}
