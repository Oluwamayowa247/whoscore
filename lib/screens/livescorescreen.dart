import 'package:flutter/material.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class LiveScoreScreen extends StatefulWidget {
  const LiveScoreScreen({super.key});

  @override
  State<LiveScoreScreen> createState() => _LiveScoreScreenState();
}

class _LiveScoreScreenState extends State<LiveScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Row(
        children: [Text('Hi Boy !')],
      ),
    );
  }
}
