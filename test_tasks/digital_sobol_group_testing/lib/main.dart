import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/features/routes/sobol_app_router.dart';
import 'src/theme/figure_drawer_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: SobolApp()));
}

class SobolApp extends StatefulWidget {
  const SobolApp({super.key});

  @override
  State<SobolApp> createState() => _SobolAppState();
}

class _SobolAppState extends State<SobolApp> {
  final _router = SobolAppRouter();

  @override
  Widget build(BuildContext context) {
    return FigureDrawerTheme(
      child: MaterialApp.router(
        title: 'Sobol app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
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
