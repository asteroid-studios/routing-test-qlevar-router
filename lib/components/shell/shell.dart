import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/components/app/routing/app_routes.dart';
import 'package:routing_test/components/app/routing/meta.dart';
import 'package:routing_test/components/shell/floating_player.dart';
import 'package:routing_test/features/community/routing/community_routes.dart';
import 'package:routing_test/features/discover/routing/discover_routes.dart';
import 'package:routing_test/features/home/routing/home_routes.dart';
import 'package:routing_test/features/you/routing/you_routes.dart';

class Shell extends HookWidget {
  const Shell({
    required this.router,
    super.key,
  });

  final QRouter router;
  @override
  Widget build(BuildContext context) {
    final navBarIndex = useState(0);
    final showFloatingPlayer = useState(true);
    final showBottomNav = useState(true);

    bool metaFromKey(String key) {
      // Basically means if not login screen.
      if (QR.currentRoute.name == AppRoutes.app) {
        final currentRoute = QR.navigatorOf(AppRoutes.app).currentRoute;
        return currentRoute.meta[key] as bool? ?? true;
      }
      return true;
    }

    int currentNavBarIndex() {
      final index =
          navBarItems.indexWhere((item) => QR.currentPath.contains(item.route));
      return index == -1 ? 0 : index;
    }

    void updateShell() {
      navBarIndex.value = currentNavBarIndex();
      showFloatingPlayer.value = metaFromKey(RouteMeta.showFloatingPlayer);
      showBottomNav.value = metaFromKey(RouteMeta.showBottomNav);
    }

    useEffect(() {
      updateShell();
      QR.navigator.addListener(updateShell);
      return () {
        QR.navigator.removeListener(updateShell);
      };
    }, []);

    return Scaffold(
      body: Column(
        children: [
          Expanded(child: router),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showFloatingPlayer.value) const FloatingPlayer(),
          if (showBottomNav.value)
            BottomNavigationBar(
              showUnselectedLabels: true,
              unselectedItemColor: Colors.lightBlueAccent,
              currentIndex: navBarIndex.value,
              onTap: (index) {
                final item = navBarItems[index];
                if (QR.currentPath.contains(item.route)) {
                  QR.toName(item.route);
                } else {
                  QR.toName(
                    item.route,
                    pageAlreadyExistAction: PageAlreadyExistAction.BringToTop,
                  );
                }
                navBarIndex.value = index;
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
  }
}

const navBarItems = [
  NavItem(
    label: 'Home',
    icon: Icons.home,
    route: HomeRoutes.home,
  ),
  NavItem(
    label: 'Discover',
    icon: Icons.audiotrack_outlined,
    route: DiscoverRoutes.discover,
  ),
  NavItem(
    label: 'Community',
    icon: Icons.chat,
    route: CommunityRoutes.community,
  ),
  NavItem(
    label: 'You',
    icon: Icons.person,
    route: YouRoutes.you,
  ),
];

class NavItem {
  const NavItem({
    required this.label,
    required this.icon,
    required this.route,
  });

  final IconData icon;
  final String route;
  final String label;
}
