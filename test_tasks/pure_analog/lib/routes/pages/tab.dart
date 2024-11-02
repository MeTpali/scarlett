import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_analog/resources/pure_icons.dart';
import 'package:pure_analog/routes/router.dart';
import 'package:topg/topg.dart';

@RoutePage()
class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final topgTheme = TopGTheme.of(context);

    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: const Color(0xFF7446AC).withOpacity(0.3),
      ),
      child: AutoTabsRouter(
        routes: const [
          PostsRoute(),
          ChatsRoute(),
          LikesRoute(),
          SettingsRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: topgTheme.mode == TopGMode.dark
                  ? const Color(0xFF191818)
                  : TopGColors.softLightBlue,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: tabsRouter.activeIndex,
              type: BottomNavigationBarType.fixed,
              onTap: tabsRouter.setActiveIndex,
              enableFeedback: false,
              items: [
                BottomNavigationBarItem(
                  label: PostsRoute.name,
                  icon: SvgPicture.asset(
                    PureIcons.posts,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFF7446AC),
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    PureIcons.posts,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFFF2C94C),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: ChatsRoute.name,
                  icon: SvgPicture.asset(
                    PureIcons.chats,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFF7446AC),
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    PureIcons.chats,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFFF2C94C),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: LikesRoute.name,
                  icon: SvgPicture.asset(
                    PureIcons.likes,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFF7446AC),
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    PureIcons.likes,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFFF2C94C),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const BottomNavigationBarItem(
                  label: SettingsRoute.name,
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Color(0xFF7446AC),
                  ),
                  activeIcon: Icon(
                    Icons.settings_outlined,
                    color: Color(0xFFF2C94C),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
