import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/auth/routing/auth_routes.dart';
import 'package:routing_test/features/community/routing/community_routes.dart';
import 'package:routing_test/features/discover/routing/discover_routes.dart';
import 'package:routing_test/features/home/routing/home_routes.dart';
import 'package:routing_test/features/you/routing/you_routes.dart';

class Shell extends StatefulWidget {
  const Shell({
    required this.router,
    super.key,
  });

  final QRouter router;

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: widget.router),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.lightBlueAccent,
        currentIndex: navBarIndex,
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
          setState(() => navBarIndex = index);
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
