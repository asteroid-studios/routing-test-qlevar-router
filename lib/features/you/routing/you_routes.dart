
import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/you/pages/settings/settings_page.dart';
import 'package:routing_test/features/you/pages/you/you_page.dart';

class YouRoutes {
  static const String you = 'you';
  static const String settings = 'settings';

  final routes = QRoute(
    name: you,
    path: '/you',
    middleware: [QMiddlewareBuilder()],
    builder: () => const YouPage(),
    children: [
      QRoute(
        name: settings,
        path: 'settings',
        middleware: [QMiddlewareBuilder()],
        builder: () => const SettingsPage(),
      ),
    ],
  );
}
