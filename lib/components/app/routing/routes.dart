import 'package:routing_test/features/home/routing/routes.dart';
import 'package:routing_test/features/you/routing/routes.dart';

class AppRoutes {
  static const app = 'app';
  static const initRoute = HomeRoutes.home;
  final routes = [
    HomeRoutes().routes,
    YouRoutes().routes,
  ];
}
