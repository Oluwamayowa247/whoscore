import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whoscore/screens/homescreen.dart';
import 'package:whoscore/screens/onboarding_screen.dart';

bool? seenOnBoardingScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //to show onboardingscreen once
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final SharedPreferences prefs = await _prefs;
  seenOnBoardingScreen = prefs.getBool('seenOnBoardingScreen') ?? false;

  runApp(const WhoScore());
}

class WhoScore extends StatelessWidget {
  const WhoScore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: seenOnBoardingScreen == true ? const HomeScreen() : const OnBoardingScreen(),
      title: 'WhoScore',
    );
  }
}
