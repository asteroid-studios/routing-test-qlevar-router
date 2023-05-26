import 'package:flutter/material.dart';

import 'package:routing_test/router/router.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({
    @pathParam required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Post',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        OutlinedButton(
          onPressed: () {
            context.navigateTo(
              ThreadRoute(id: 'fterwfsd', postId: id),
            );
          },
          child: Text('Open Comment thread'),
        ),
      ],
    );
  }
}
