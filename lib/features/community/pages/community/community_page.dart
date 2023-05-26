import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:routing_test/router/router.dart';

@RoutePage()
class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Community',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        OutlinedButton(
          onPressed: () {
            showMaterialModalBottomSheet(
              useRootNavigator: true,
              context: context,
              builder: (context) => Text(
                'YO',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            );
          },
          child: Text('OPEN MODAL FULL SCREEN'),
        ),
        OutlinedButton(
          onPressed: () {
            showMaterialModalBottomSheet(
              context: context,
              builder: (context) => Text(
                'YO',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            );
          },
          child: Text('OPEN MODAL'),
        ),
        OutlinedButton(
          onPressed: () {
            context.navigateTo(
              PostRoute(id: 'afsj9299f'),
            );
          },
          child: Text('Open Post'),
        ),
      ],
    );
  }
}
