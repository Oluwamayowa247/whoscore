import 'package:flutter/material.dart';

class BottomBarModel extends StatelessWidget {
  final IconButton icon;
  final String iconText;
  const BottomBarModel({super.key, required this.icon, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(
          iconText,
          style: const TextStyle(
            fontFamily: 'FuzzyBubbles',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 15
          ),
        )
      ],
    );
  }
}
