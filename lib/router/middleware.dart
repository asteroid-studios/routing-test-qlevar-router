import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/auth/routing/auth_routes.dart';
import 'package:routing_test/features/auth/services/auth_service.dart';
import 'package:routing_test/router/router.dart';

class AuthMiddleware extends QMiddleware {
  final authService = AuthService();

  @override
  Future<String?> redirectGuard(String path) async {
    // print(path);
    // print(authService.loggedIn);
    if (authService.loggedIn) {
      if (path.contains(AuthRoutes.login)) {
        print('REDIRECT TO HOME');
        return '${AppRouter.shellRoute}/${AppRouter.initRoute}';
      }
    } else if (!path.contains(AuthRoutes.login)) {
      print('REDIRECT TO LOGIN');
      return AuthRoutes.login;
    }
    // print('NO REDIRECT');
    return null;
  }
}
