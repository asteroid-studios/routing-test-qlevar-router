import 'package:flutter/foundation.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/components/404/not_found_page.dart';
import 'package:routing_test/components/shell/shell.dart';
import 'package:routing_test/features/auth/routes/auth_routes.dart';
import 'package:routing_test/features/community/routes/community_routes.dart';
import 'package:routing_test/features/discover/routes/discover_routes.dart';
import 'package:routing_test/features/home/routes/home_routes.dart';
import 'package:routing_test/features/you/routes/you_routes.dart';
import 'package:routing_test/router/middleware.dart';

class AppRouter {
  AppRouter._();

  static final instance = AppRouter._();

  static const initRoute = HomeRoutes.home;
  static const shellRoute = '';

  static init() {
    QR.setUrlStrategy();
    QR.settings.enableLog = false;
    QR.settings.globalMiddlewares.add(AuthMiddleware());
    QR.settings.autoRestoration = true;
    // Example of global observer, can also add per navigator
    QR.observer.onNavigate.add((path, route) async {
      if (path.isNotEmpty && path != '/') {
        print(path);
      }
    });
    // QR.settings.initPage = CircularProgressIndicator();
    QR.settings.notFoundPage = QRoute(
      path: '/404',
      builder: () => const NotFoundPage(),
    );
  }

  static const parser = QRouteInformationParser();

  final routerDelegate = QRouterDelegate(
    [
      AuthRoutes().routes,
      QRoute.withChild(
        name: shellRoute,
        path: shellRoute,
        initRoute: initRoute,
        builderChild: (router) => Shell(router: router),
        children: [
          HomeRoutes().routes,
          DiscoverRoutes().routes,
          CommunityRoutes().routes,
          YouRoutes().routes,
        ],
      ),
    ],
    withWebBar: kDebugMode,
    initPath: shellRoute,
  );
}
