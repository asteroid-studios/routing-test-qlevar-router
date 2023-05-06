import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/components/404/not_found_page.dart';
import 'package:routing_test/components/app/app.dart';
import 'package:routing_test/features/auth/routing/routes.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('authStorage');
  QR.settings.enableLog = false;
  QR.settings.globalMiddlewares.add(AuthMiddleware());
  QR.settings.notFoundPage = QRoute(
    path: '/404',
    builder: () => const NotFoundPage(),
  );
  runApp(const App());
}
