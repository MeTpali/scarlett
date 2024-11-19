import 'package:flutter/material.dart';

import 'theme_modes.dart';
import 'topg_storage.dart';
import 'topg_theme_data.dart';

/// Injects [TopGTheme] components and themes library and allow switch theme modes
/// Should invoke init() before runApp to initialize shared preferences
class TopG extends StatefulWidget {
  final List<TopGMode> modes;
  final Widget child;
  const TopG({
    required this.child,
    this.modes = TopGMode.values,
    super.key,
  });

  static const _contextError =
      'TopG operation requested with a context that does not include a TopG.\n'
      'The context used to switch theme modes from the TopG must be that of a '
      'widget that is a descendant of a TopG widget.';

  static Future<void> setThemeModeOf(
    BuildContext context,
    TopGMode mode,
  ) async {
    final _TopGState? topgState = context.findAncestorStateOfType<_TopGState>();

    if (topgState == null) {
      throw FlutterError(_contextError);
    }

    await topgState.setThemeMode(mode);
  }

  static List<TopGMode> availableThemeModesOf(BuildContext context) {
    final TopG? topg = context.findAncestorWidgetOfExactType<TopG>();

    if (topg == null) {
      throw FlutterError(_contextError);
    }

    return topg.modes;
  }

  static Future<void> init() async {
    await TopGStorage.init();
  }

  @override
  State<TopG> createState() => _TopGState();
}

class _TopGState extends State<TopG> {
  late TopGThemeData data;

  @override
  void initState() {
    super.initState();
    data = TopGStorage.getThemeMode().resolveTheme();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      data = TopGStorage.getThemeMode().resolveTheme();
    });
  }

  Future<void> setThemeMode(TopGMode mode) async {
    setState(() {
      data = mode.resolveTheme();
    });
    await TopGStorage.setTheme(data.mode);
  }

  @override
  Widget build(BuildContext context) => TopGTheme(
        data: data,
        child: widget.child,
      );
}

/// Injects [TopGTheme] components and themes library.
/// Use [TopG] to enable theme mode switch.
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
