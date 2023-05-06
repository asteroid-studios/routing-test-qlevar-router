import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
      ],
    );
  }
}
