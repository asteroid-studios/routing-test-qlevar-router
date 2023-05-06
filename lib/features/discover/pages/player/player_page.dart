import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        id,
        style: TextStyle(
          fontSize: 100,
        ),
      ),
    );
  }
}
