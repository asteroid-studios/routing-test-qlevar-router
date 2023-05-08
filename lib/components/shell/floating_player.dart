import 'package:flutter/material.dart';

class FloatingPlayer extends StatelessWidget {
  const FloatingPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.lightBlue,
      child: Row(
        children: [
          SizedBox(width: 16),
          Expanded(
            child: Text(
              'Floating Player',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
