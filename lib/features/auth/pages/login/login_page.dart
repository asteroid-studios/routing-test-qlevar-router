import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/auth/services/auth_service.dart';
import 'package:routing_test/features/home/routes/home_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOGIN PAGE'),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                AuthService().login();
                QR.toName(HomeRoutes.home);
              },
              child: Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}
