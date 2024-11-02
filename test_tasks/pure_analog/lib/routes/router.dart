import 'package:auto_route/auto_route.dart';

import 'pages/chats.dart';
import 'pages/dialog.dart';
import 'pages/likes.dart';
import 'pages/posts.dart';
import 'pages/settings.dart';
import 'pages/tab.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class PureRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: TabRoute.page,
          initial: true,
          children: [
            AutoRoute(page: PostsRoute.page, initial: true),
            AutoRoute(page: ChatsRoute.page),
            AutoRoute(page: LikesRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: PureDialogRoute.page),
      ];
}
