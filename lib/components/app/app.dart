import 'package:flutter/material.dart';

import 'package:routing_test/components/app/routing/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: AppRouter.parser,
      routerDelegate: AppRouter().router,
    );
  }
}
