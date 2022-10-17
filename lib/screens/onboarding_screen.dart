import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:whoscore/main.dart';

import 'package:whoscore/model/onboardingmodel.dart';
import 'package:whoscore/screens/homescreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  final PageController _controller = PageController(initialPage: 0);

  Future setSeenOnBoardingScreen() async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    seenOnBoardingScreen = await prefs.setBool('seenOnBoardingScreen', true);
  }

  @override
  void initState() {
    super.initState();
    setSeenOnBoardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              controller: _controller,
              itemCount: onBoardingContents.length,
              itemBuilder: ((context, index) => Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height - 400,
                        child: onBoardingContents[index].image,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        onBoardingContents[index].title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'FuzzyBubbles',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        onBoardingContents[index].subtitle,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'FuzzyBubbles',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 200,
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(200, 50)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'FuzzyBubbles',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: SlideEffect(
                          dotColor: Colors.grey,
                          activeDotColor:
                              currentPage == onBoardingContents.length - 1
                                  ? Colors.grey
                                  : Colors.black),
                    ),
                    TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 5),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
