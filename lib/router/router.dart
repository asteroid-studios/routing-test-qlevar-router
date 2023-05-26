import 'package:auto_route/auto_route.dart';

import 'package:routing_test/features/auth/services/auth_service.dart';
import 'package:routing_test/router/router.gr.dart';
export 'package:routing_test/router/router.gr.dart';
export 'package:auto_route/auto_route.dart';

class RouteMeta {
  static const String showBottomNav = 'showBottomNav';
  static const String showFloatingPlayer = 'showFloatingPlayer';
}

@AutoRouterConfig()
class AppRouter extends $AppRouter implements AutoRouteGuard {
  AppRouter._();

  static final instance = AppRouter._();

  final authService = AuthService();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: Shell.page,
          children: [
            AutoRoute(
              page: HomeTab.page,
              path: '',
              children: [
                AutoRoute(page: HomeRoute.page, path: ''),
                AutoRoute(
                  page: FavouritesRoute.page,
                  path: 'favourites',
                  meta: const {RouteMeta.showFloatingPlayer: false},
                ),
              ],
            ),
            AutoRoute(
              page: DiscoverTab.page,
              path: 'discover',
              children: [
                AutoRoute(page: DiscoverRoute.page, path: ''),
                AutoRoute(page: PlayerRoute.page, path: ':id'),
              ],
            ),
            AutoRoute(
              page: CommunityTab.page,
              path: 'community',
              children: [
                AutoRoute(page: CommunityRoute.page, path: ''),
                AutoRoute(page: PostRoute.page, path: 'post/:id'),
                AutoRoute(
                  page: ThreadRoute.page,
                  path: 'post/:postId/thread/:id',
                ),
              ],
            ),
            AutoRoute(
              page: YouTab.page,
              path: 'you',
              children: [
                AutoRoute(page: YouRoute.page, path: ''),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: '/account',
          page: AccountRoute.page,
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.loggedIn) {
      if (resolver.route.name == LoginRoute.name) {
        push(const HomeRoute());
      } else {
        resolver.next();
      }
    } else if (resolver.route.name != LoginRoute.name) {
      push(const LoginRoute());
    } else {
      resolver.next();
    }
  }
}

@RoutePage(name: 'HomeTab')
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage(name: 'DiscoverTab')
class DiscoverTabPage extends AutoRouter {
  const DiscoverTabPage({super.key});
}

@RoutePage(name: 'CommunityTab')
class CommunityTabPage extends AutoRouter {
  const CommunityTabPage({super.key});
}

@RoutePage(name: 'YouTab')
class YouTabPage extends AutoRouter {
  const YouTabPage({super.key});
}
