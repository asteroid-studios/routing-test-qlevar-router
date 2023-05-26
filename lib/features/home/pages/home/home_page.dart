import 'package:flutter/material.dart';

import 'package:routing_test/features/auth/services/auth_service.dart';
import 'package:routing_test/router/router.dart';

@RoutePage()
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
              context.navigateTo(const FavouritesRoute());
            },
            child: Text(
              'Favourites',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              AuthService().logout();
              context.pushRoute(const LoginRoute());
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
