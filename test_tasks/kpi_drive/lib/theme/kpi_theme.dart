import 'package:flutter/material.dart';
import 'package:kpi_drive/theme/constants.dart';
import 'package:kpi_drive/theme/theme_data.dart';

import 'theme_storage.dart';

class KpiThemeProvider extends StatefulWidget {
  final Widget child;
  const KpiThemeProvider({required this.child, super.key});

  static Future<void> toggleThemeOf(BuildContext context) async {
    final _KpiThemeProviderState? topgState =
        context.findAncestorStateOfType<_KpiThemeProviderState>();

    if (topgState == null) {
      throw FlutterError(
        'TopG operation requested with a context that does not include a TopG.\n'
        'The context used to switch theme modes from the TopG must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }

    await topgState.toggleTheme();
  }

  static Future<void> init() async {
    await KpiThemeStorage.init();
  }

  @override
  State<KpiThemeProvider> createState() => _KpiThemeProviderState();
}

class _KpiThemeProviderState extends State<KpiThemeProvider> {
  late KpiThemeData data;

  @override
  void initState() {
    super.initState();
    data = KpiThemeStorage.getThemeMode().resolveTheme();
  }

  Future<void> toggleTheme() async {
    setState(() {
      data = data.map<KpiThemeData>(
        light: (_) => const KpiThemeData.dark(),
        dark: (_) => const KpiThemeData.light(),
      );
    });
    await KpiThemeStorage.setTheme(data.mode);
  }

  @override
  Widget build(BuildContext context) => KpiTheme(
        data: data,
        child: widget.child,
      );
}

class KpiTheme extends InheritedTheme {
  final KpiThemeData data;

  const KpiTheme({
    required this.data,
    required super.child,
    super.key,
  });

  static KpiThemeData of(BuildContext context) {
    final KpiTheme? topgTheme =
        context.dependOnInheritedWidgetOfExactType<KpiTheme>();
    final KpiThemeData? topgThemeData = topgTheme?.data;

    if (topgThemeData == null) {
      throw FlutterError(
        'KpiTheme operation requested with a context that does not include a KpiTheme.\n'
        'The context used to get theme from the KpiTheme must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }

    return topgThemeData;
  }

  @override
  bool updateShouldNotify(KpiTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      KpiTheme(data: data, child: child);
}
