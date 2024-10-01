import 'package:auto_route/auto_route.dart';

import 'screens/figure_drawer_screen.dart';

part 'sobol_app_router.gr.dart';

@AutoRouterConfig()
class SobolAppRouter extends _$SobolAppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FigureDrawerRoute.page, initial: true),
      ];
}
