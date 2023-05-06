import 'package:routing_test/features/community/routing/community_routes.dart';
import 'package:routing_test/features/discover/routing/discover_routes.dart';
import 'package:routing_test/features/home/routing/home_routes.dart';
import 'package:routing_test/features/you/routing/you_routes.dart';

class AppRoutes {
  static const app = 'app';
  static const initRoute = HomeRoutes.home;
  final routes = [
    HomeRoutes().routes,
    DiscoverRoutes().routes,
    CommunityRoutes().routes,
    YouRoutes().routes,
  ];
}
