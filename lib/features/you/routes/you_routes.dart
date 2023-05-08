import 'package:flutter/material.dart';

import 'package:qlevar_router/qlevar_router.dart';

import 'package:routing_test/features/you/pages/settings/settings_page.dart';
import 'package:routing_test/features/you/pages/you/you_page.dart';

class YouRoutes {
  static const String you = 'you';
  static const String settings = 'settings';

  final routes = QRoute(
    name: you,
    path: you,
    builder: () => const YouPage(),
    pageType: const QFadePage(),
    children: [
      QRoute(
        name: settings,
        path: settings,
        builder: () => const SettingsPage(),
        middleware: [
          QMiddlewareBuilder(
            canPopFunc: () async {
              if (QR.context != null) {
                return await showDialog(
                  context: QR.context!,
                  builder: (context) {
                    return Column(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text('Pop'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: Text('Stay'),
                        ),
                      ],
                    );
                  },
                );
              }
              return true;
            },
          ),
        ],
      ),
    ],
  );
}
