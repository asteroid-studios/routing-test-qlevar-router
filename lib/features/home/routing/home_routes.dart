import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/home/pages/favourites/favourites_page.dart';
import 'package:routing_test/features/home/pages/home/home_page.dart';
import 'package:routing_test/router/meta.dart';

class HomeRoutes {
  static const String home = 'home';
  static const String favourites = 'favourites';

  final routes = QRoute(
    name: home,
    path: home,
    middleware: [QMiddlewareBuilder()],
    pageType: const QFadePage(),
    builder: () => const HomePage(),
    children: [
      QRoute(
        name: favourites,
        path: favourites,
        meta: {
          RouteMeta.showFloatingPlayer: false,
        },
        middleware: [QMiddlewareBuilder()],
        builder: () => const FavouritesPage(),
      ),
    ],
  );
}
