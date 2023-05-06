import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/discover/routing/discover_routes.dart';

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
              QR.toName(
                DiscoverRoutes.content,
                params: {'id': '1'},
              );
            },
            child: Text(
              'play episode 1',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              QR.toName(
                DiscoverRoutes.content,
                params: {'id': '2'},
              );
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
