import 'package:flutter/material.dart';

import 'package:routing_test/router/router.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Account PAGE PAGE'),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                context.back();
              },
              child: Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
