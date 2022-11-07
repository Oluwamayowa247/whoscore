import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:whoscore/provider/matchscore_provider.dart';

import 'package:whoscore/screens/homescreen.dart';
import 'package:whoscore/screens/onboarding_screen.dart';

bool? seenOnBoardingScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //to show onboardscreen once
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final SharedPreferences prefs = await _prefs;
  seenOnBoardingScreen = prefs.getBool('seenOnBoardingScreen') ?? false;

  runApp(WhoScore());
}

class WhoScore extends StatelessWidget {
  const WhoScore({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MatchScoreProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: seenOnBoardingScreen == true ? HomeScreen() : OnBoardingScreen(),
        title: 'WhoScore',
      ),
    );
  }
}
