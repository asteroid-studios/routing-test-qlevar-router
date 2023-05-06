import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/auth/routing/routes.dart';
import 'package:routing_test/features/home/routing/routes.dart';
import 'package:routing_test/features/you/routing/routes.dart';

class Shell extends StatelessWidget {
  const Shell({
    required this.router,
    super.key,
  });

  final QRouter router;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: router),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.black,
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  if (QR.currentPath.contains(HomeRoutes.home)) {
                    QR.toName(HomeRoutes.home);
                  } else {
                    QR.toName(
                      HomeRoutes.home,
                      pageAlreadyExistAction: PageAlreadyExistAction.BringToTop,
                    );
                  }
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  if (QR.currentPath.contains(YouRoutes.you)) {
                    QR.toName(YouRoutes.you);
                  } else {
                    QR.toName(
                      YouRoutes.you,
                      pageAlreadyExistAction: PageAlreadyExistAction.BringToTop,
                    );
                  }
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
