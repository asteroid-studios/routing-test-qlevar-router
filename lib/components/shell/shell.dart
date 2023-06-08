import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:routing_test/components/shell/floating_player.dart';
import 'package:routing_test/router/router.dart';

@RoutePage()
class Shell extends HookWidget {
  const Shell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return AutoRouter(
    //   builder: (context, child) {
    //     // we check for active route index by using
    //     // router.isRouteActive method
    //     var activeIndex = navBarItems.indexWhere(
    //       (d) => context.router.isRouteActive(d.route.routeName),
    //     );
    //     // there might be no active route until router is mounted
    //     // so we play safe
    //     if (activeIndex == -1) {
    //       activeIndex = 0;
    //     }
    //     return Scaffold(
    //       body: Row(
    //         children: [
    //           NavigationRail(
    //             destinations: navBarItems
    //                 .map((item) => NavigationRailDestination(
    //                       icon: Icon(item.icon),
    //                       label: Text(item.label),
    //                     ))
    //                 .toList(),
    //             selectedIndex: activeIndex,
    //             onDestinationSelected: (index) {
    //               // use navigate instead of push so you won't have
    //               // many useless route stacks
    //               context.navigateTo(navBarItems[index].route);
    //             },
    //           ),
    //           // child is the rendered route stack
    //           Expanded(child: child)
    //         ],
    //       ),
    //     );
    //   },
    // );

    // xcrun simctl openurl booted https://lived.app.link/community/post/afsj9299f/thread/fterwfsd
    // xcrun simctl openurl booted https://lived.app.link/community
    // xcrun simctl openurl booted https://lived.app.link/account

    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        DiscoverRoute(),
        CommunityRoute(),
        YouRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        final currentTab = tabsRouter.currentSegments.first;
        final currentRoute = tabsRouter.currentSegments.last;
        final showFloatingPlayer =
            currentRoute.meta[RouteMeta.showFloatingPlayer] as bool? ?? true;
        final showBottomNav =
            currentRoute.meta[RouteMeta.showBottomNav] as bool? ?? true;
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(child: child),
              ],
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showFloatingPlayer) const FloatingPlayer(),
              if (showBottomNav)
                BottomNavigationBar(
                  showUnselectedLabels: true,
                  unselectedItemColor: Colors.lightBlueAccent,
                  currentIndex: tabsRouter.activeIndex,
                  onTap: (index) {
                    final tappedRoute = navBarItems[index].route;
                    if (currentTab.name == tappedRoute.routeName) {
                      if (currentTab.path ==
                          tabsRouter.currentPath.replaceAll('/', '')) {
                        print('scroll to top');
                      } else {
                        context.navigateTo(tappedRoute);
                      }
                    } else {
                      tabsRouter.setActiveIndex(index);
                    }
                  },
                  items: navBarItems
                      .map(
                        (i) => BottomNavigationBarItem(
                          backgroundColor: Colors.blue,
                          label: i.label,
                          icon: Icon(
                            i.icon,
                          ),
                        ),
                      )
                      .toList(),
                ),
            ],
          ),
        );
      },
    );
  }
}

const navBarItems = [
  NavItem(
    label: 'Home',
    icon: Icons.home,
    route: HomeTab(),
  ),
  NavItem(
    label: 'Discover',
    icon: Icons.audiotrack_outlined,
    route: DiscoverTab(),
  ),
  NavItem(
    label: 'Community',
    icon: Icons.chat,
    route: CommunityTab(),
  ),
  NavItem(
    label: 'You',
    icon: Icons.person,
    route: YouTab(),
  ),
];

class NavItem {
  const NavItem({
    required this.route,
    required this.label,
    required this.icon,
  });

  final PageRouteInfo route;
  final IconData icon;
  final String label;
}
