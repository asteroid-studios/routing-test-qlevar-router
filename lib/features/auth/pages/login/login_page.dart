import 'package:flutter/material.dart';

import 'package:routing_test/features/auth/services/auth_service.dart';
import 'package:routing_test/router/router.dart';

@RoutePage()
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
                context.pushRoute(const HomeRoute());
              },
              child: Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}
