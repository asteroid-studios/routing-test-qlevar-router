import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/community/pages/community/community_page.dart';

class CommunityRoutes {
  static const String community = 'community';

  final routes = QRoute(
    name: community,
    path: community,
    pageType: const QFadePage(),
    middleware: [QMiddlewareBuilder()],
    builder: () => const CommunityPage(),
  );
}
