import 'package:flutter/foundation.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/components/app/routing/routes.dart';
import 'package:routing_test/components/shell/shell.dart';
import 'package:routing_test/features/auth/routing/routes.dart';

final router = QRouterDelegate(
  [
    AuthRoutes().routes,
    QRoute.withChild(
      path: AppRoutes.app,
      initRoute: AppRoutes.initRoute,
      builderChild: (router) => Shell(router: router),
      children: AppRoutes().routes,
      middleware: [QMiddlewareBuilder()],
    ),
  ],
  withWebBar: kDebugMode,
  initPath: AppRoutes.app,
);
