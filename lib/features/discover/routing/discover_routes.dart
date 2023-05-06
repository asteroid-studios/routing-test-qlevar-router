import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/discover/pages/discover/discover_page.dart';

class DiscoverRoutes {
  static const String discover = 'discover';

  final routes = QRoute(
    name: discover,
    path: discover,
    middleware: [QMiddlewareBuilder()],
    builder: () => const DiscoverPage(),
  );
}
