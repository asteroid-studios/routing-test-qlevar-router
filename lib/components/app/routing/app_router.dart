import 'package:flutter/foundation.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/components/404/not_found_page.dart';
import 'package:routing_test/components/app/routing/app_routes.dart';
import 'package:routing_test/components/shell/shell.dart';
import 'package:routing_test/features/auth/routing/auth_routes.dart';

class AppRouter {
  static init() {
    QR.settings.enableLog = false;
    QR.settings.globalMiddlewares.add(AuthMiddleware());
    QR.settings.autoRestoration = true;
    // QR.settings.initPage = CircularProgressIndicator();
    QR.settings.notFoundPage = QRoute(
      path: '/404',
      builder: () => const NotFoundPage(),
    );
  }

  static const parser = QRouteInformationParser();

  final router = QRouterDelegate(
    [
      AuthRoutes().routes,
      QRoute.withChild(
        name: AppRoutes.app,
        path: AppRoutes.app,
        initRoute: AppRoutes.initRoute,
        builderChild: (router) => Shell(router: router),
        children: AppRoutes().routes,
        middleware: [QMiddlewareBuilder()],
      ),
    ],
    // withWebBar: kDebugMode,
    initPath: AppRoutes.app,
  );
}
