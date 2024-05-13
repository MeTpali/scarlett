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
    CameraRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CameraScreen(),
      );
    },
    ErrorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ErrorScreen(),
      );
    },
    PhotoCheckRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhotoCheckScreen(),
      );
    },
    PhotoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhotoScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    TestResultsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestResultsScreen(),
      );
    },
  };
}

/// generated route for
/// [CameraScreen]
class CameraRoute extends PageRouteInfo<void> {
  const CameraRoute({List<PageRouteInfo>? children})
      : super(
          CameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ErrorScreen]
class ErrorRoute extends PageRouteInfo<void> {
  const ErrorRoute({List<PageRouteInfo>? children})
      : super(
          ErrorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ErrorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhotoCheckScreen]
class PhotoCheckRoute extends PageRouteInfo<void> {
  const PhotoCheckRoute({List<PageRouteInfo>? children})
      : super(
          PhotoCheckRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhotoCheckRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhotoScreen]
class PhotoRoute extends PageRouteInfo<void> {
  const PhotoRoute({List<PageRouteInfo>? children})
      : super(
          PhotoRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhotoRoute';

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

/// generated route for
/// [TestResultsScreen]
class TestResultsRoute extends PageRouteInfo<void> {
  const TestResultsRoute({List<PageRouteInfo>? children})
      : super(
          TestResultsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestResultsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
