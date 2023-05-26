import 'package:flutter/material.dart';

import 'package:routing_test/router/router.dart';

@RoutePage()
class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Discover',
            style: TextStyle(
              fontSize: 100,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              context.navigateTo(PlayerRoute(id: '1'));
            },
            child: Text(
              'play episode 1',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              context.navigateTo(PlayerRoute(id: '2'));
            },
            child: Text(
              'play episode 2',
            ),
          ),
        ],
      ),
    );
  }
}
