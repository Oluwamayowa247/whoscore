import 'package:flutter/material.dart';
import 'package:whoscore/screens/onboarding_screen.dart';

void main()=>runApp(WhoScore());

class WhoScore extends StatelessWidget {
  const WhoScore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      title: 'WhoSCore',

    );
  }
}