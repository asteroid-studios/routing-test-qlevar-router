import 'package:flutter/material.dart';

import 'package:routing_test/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.instance.config(),
    );
  }
}
