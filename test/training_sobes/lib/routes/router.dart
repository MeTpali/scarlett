import 'package:auto_route/auto_route.dart';

import 'screens/key_page.dart';
import 'screens/performance_measure_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRoter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: KeyRoute.page, initial: true),
        AutoRoute(page: PerformanceMeasureRoute.page, initial: true)
      ];
}
