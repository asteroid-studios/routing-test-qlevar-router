import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/auth/routing/routes.dart';
import 'package:routing_test/features/auth/services/auth_service.dart';
import 'package:routing_test/features/home/routing/routes.dart';

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
              // QR.navigatorOf(HomeRoutes.home).switchToName(HomeRoutes.favourites);
              QR.toName(HomeRoutes.favourites);
              // QR.to('/home/favourites');
            },
            child: Text(
              'Favourites',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              AuthService().logout();
              QR.toName(AuthRoutes.login);
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
