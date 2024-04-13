import 'package:auto_route/auto_route.dart';
import 'package:example/src/chat_screen.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class ExampleRouter extends _$ExampleRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ChatRoute.page, initial: true),
      ];
}
