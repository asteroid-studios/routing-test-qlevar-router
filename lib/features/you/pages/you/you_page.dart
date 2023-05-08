import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/you/routes/you_routes.dart';

class YouPage extends StatelessWidget {
  const YouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'You',
          style: TextStyle(
            fontSize: 100,
          ),
        ),
        OutlinedButton(
          onPressed: () {
            QR.toName(YouRoutes.settings);
          },
          child: Text('SETTINGS'),
        ),
      ],
    );
  }
}
