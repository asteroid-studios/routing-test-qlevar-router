import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class ThreadPage extends StatelessWidget {
  const ThreadPage({
    @pathParam required this.id,
    @pathParam required this.postId,
    super.key,
  });

  final String id;
  final String postId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Thread $id',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        OutlinedButton(
          onPressed: () {
            context.popRoute();
          },
          child: Text('Back'),
        ),
      ],
    );
  }
}
