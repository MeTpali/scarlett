// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChangingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangingScreen(),
      );
    },
    PickRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PickScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [ChangingScreen]
class ChangingRoute extends PageRouteInfo<void> {
  const ChangingRoute({List<PageRouteInfo>? children})
      : super(
          ChangingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PickScreen]
class PickRoute extends PageRouteInfo<void> {
  const PickRoute({List<PageRouteInfo>? children})
      : super(
          PickRoute.name,
          initialChildren: children,
        );

  static const String name = 'PickRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
