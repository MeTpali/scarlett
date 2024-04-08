// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'sobol_app_router.dart';

abstract class _$SobolAppRouter extends RootStackRouter {
  // ignore: unused_element
  _$SobolAppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FigureDrawerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FigureDrawerScreen(),
      );
    }
  };
}

/// generated route for
/// [FigureDrawerScreen]
class FigureDrawerRoute extends PageRouteInfo<void> {
  const FigureDrawerRoute({List<PageRouteInfo>? children})
      : super(
          FigureDrawerRoute.name,
          initialChildren: children,
        );

  static const String name = 'FigureDrawerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
