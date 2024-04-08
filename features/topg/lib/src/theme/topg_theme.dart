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
      throw UnimplementedError();
    }

    return topgThemeData;
  }

  @override
  bool updateShouldNotify(TopGTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      TopGTheme(data: data, child: child);
}
