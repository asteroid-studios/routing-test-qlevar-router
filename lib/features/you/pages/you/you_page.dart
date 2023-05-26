import 'package:flutter/material.dart';

import 'package:routing_test/router/router.dart';

@RoutePage()
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
            // QR.toName(YouRoutes.settings);
          },
          child: Text('SETTINGS'),
        ),
        OutlinedButton(
          onPressed: () {
            context.navigateTo(const AccountRoute());
          },
          child: Text('Account'),
        ),
      ],
    );
  }
}
