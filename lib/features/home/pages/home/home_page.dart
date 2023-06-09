import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/auth/routes/auth_routes.dart';
import 'package:routing_test/features/auth/services/auth_service.dart';
import 'package:routing_test/features/home/routes/home_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'HOME',
            style: TextStyle(
              fontSize: 100,
            ),
          ),
          SizedBox(
            height: 400,
          ),
          OutlinedButton(
            onPressed: () {
              QR.toName(HomeRoutes.favourites);
            },
            child: Text(
              'Favourites',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              AuthService().logout();
              QR.navigator.replaceAllWithName(AuthRoutes.login);
            },
            child: Text(
              'LOGOUT',
            ),
          ),
          SizedBox(
            height: 400,
          ),
        ],
      ),
    );
  }
}
