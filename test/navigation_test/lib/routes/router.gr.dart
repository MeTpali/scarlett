// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [BlueScreen]
class BlueRoute extends PageRouteInfo<void> {
  const BlueRoute({List<PageRouteInfo>? children})
      : super(
          BlueRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlueRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BlueScreen();
    },
  );
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [DemoScreen]
class DemoRoute extends PageRouteInfo<void> {
  const DemoRoute({List<PageRouteInfo>? children})
      : super(
          DemoRoute.name,
          initialChildren: children,
        );

  static const String name = 'DemoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DemoScreen();
    },
  );
}

/// generated route for
/// [GreenScreen]
class Sex extends PageRouteInfo<void> {
  const Sex({List<PageRouteInfo>? children})
      : super(
          Sex.name,
          initialChildren: children,
        );

  static const String name = 'Sex';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GreenScreen();
    },
  );
}

/// generated route for
/// [RedSex]
class RedRoute extends PageRouteInfo<void> {
  const RedRoute({List<PageRouteInfo>? children})
      : super(
          RedRoute.name,
          initialChildren: children,
        );

  static const String name = 'RedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RedSex();
    },
  );
}

/// generated route for
/// [TabDashboardPage]
class TabDashboardRoute extends PageRouteInfo<void> {
  const TabDashboardRoute({List<PageRouteInfo>? children})
      : super(
          TabDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabDashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TabDashboardPage();
    },
  );
}

/// generated route for
/// [YellowScreen]
class YellowRoute extends PageRouteInfo<YellowRouteArgs> {
  YellowRoute({
    required Bomzh bm,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          YellowRoute.name,
          args: YellowRouteArgs(
            bm: bm,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'YellowRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<YellowRouteArgs>();
      return YellowScreen(
        args.bm,
        key: args.key,
      );
    },
  );
}

class YellowRouteArgs {
  const YellowRouteArgs({
    required this.bm,
    this.key,
  });

  final Bomzh bm;

  final Key? key;

  @override
  String toString() {
    return 'YellowRouteArgs{bm: $bm, key: $key}';
  }
}
