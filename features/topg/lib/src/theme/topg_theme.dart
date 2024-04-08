import 'package:flutter/material.dart';

import 'topg_theme_data.dart';

class TopGTheme extends InheritedTheme {
  final TopGThemeData data;

  const TopGTheme({
    required this.data,
    required super.child,
    super.key,
  });

  static TopGThemeData of(BuildContext context) {
    final TopGTheme? topgTheme =
        context.dependOnInheritedWidgetOfExactType<TopGTheme>();
    final TopGThemeData? topgThemeData = topgTheme?.data;

    if (topgThemeData == null) {
      throw FlutterError(
        'TopGTheme operation requested with a context that does not include a TopGTheme.\n'
        'The context used to get theme from the TopGTheme must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }

    return topgThemeData;
  }

  @override
  bool updateShouldNotify(TopGTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      TopGTheme(data: data, child: child);
}

class TopG extends StatefulWidget {
  final Widget child;
  const TopG({required this.child, super.key});

  static void toggleThemeOf(BuildContext context) {
    final _TopGState? topgState = context.findAncestorStateOfType<_TopGState>();

    if (topgState == null) {
      throw FlutterError(
        'TopG operation requested with a context that does not include a TopG.\n'
        'The context used to switch theme modes from the TopG must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }
  }

  @override
  State<TopG> createState() => _TopGState();
}

class _TopGState extends State<TopG> {
  TopGThemeData data = const TopGThemeData.light();

  void toggleTheme() => setState(() {
        data = data.map<TopGThemeData>(
          light: (_) => const TopGThemeData.dark(),
          dark: (_) => const TopGThemeData.light(),
        );
      });

  @override
  Widget build(BuildContext context) {
    return TopGTheme(data: data, child: widget.child);
  }
}
