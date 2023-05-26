import 'package:flutter/material.dart';

import 'package:routing_test/router/router.dart';

@RoutePage()
class PlayerPage extends StatelessWidget {
  const PlayerPage({
    @pathParam required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        id,
        style: TextStyle(
          fontSize: 100,
        ),
      ),
    );
  }
}
