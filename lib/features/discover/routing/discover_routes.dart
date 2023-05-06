import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/discover/pages/discover/discover_page.dart';
import 'package:routing_test/features/discover/pages/player/player_page.dart';

class DiscoverRoutes {
  static const String discover = 'discover';
  static const String content = 'content';

  final routes = QRoute(
    name: discover,
    path: discover,
    pageType: const QFadePage(),
    middleware: [QMiddlewareBuilder()],
    builder: () => const DiscoverPage(),
    children: [
      QRoute(
        name: content,
        path: '$content/:id',
        builder: () => PlayerPage(
          id: QR.params['id']?.toString() ?? '',
        ),
      ),
    ],
  );
}
