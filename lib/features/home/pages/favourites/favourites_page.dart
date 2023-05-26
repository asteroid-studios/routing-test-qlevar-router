import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:routing_test/router/router.dart';

@RoutePage()
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Favourites',
            style: TextStyle(
              fontSize: 100,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              context.router.root.navigate(const YouRoute());
            },
            child: Text(
              'YOU',
            ),
          ),
        ],
      ),
    );
  }
}
