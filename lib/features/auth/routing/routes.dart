import 'package:hive_flutter/hive_flutter.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/components/app/routing/routes.dart';
import 'package:routing_test/features/auth/pages/login/login_page.dart';
import 'package:routing_test/features/auth/services/auth_service.dart';

class AuthRoutes {
  static const String login = 'login';

  final routes = QRoute(
    name: login,
    path: login,
    middleware: [QMiddlewareBuilder()],
    builder: () => const LoginPage(),
  );
}

class AuthMiddleware extends QMiddleware {
  final authService = AuthService();

  @override
  Future<String?> redirectGuard(String path) async {
    // print(path);
    // print(authService.loggedIn);
    if (authService.loggedIn) {
      if (path.contains(AuthRoutes.login)) {
        print('REDIRECT TO HOME');
        return '${AppRoutes.app}/${AppRoutes.initRoute}';
      }
    } else if (!path.contains(AuthRoutes.login)) {
      print('REDIRECT TO LOGIN');
      return AuthRoutes.login;
    }
    // print('NO REDIRECT');
    return null;
  }
}
