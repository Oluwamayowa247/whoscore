import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class OnBoardingModel {
  final String title;
  final String subtitle;
  final LottieBuilder image;
  OnBoardingModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnBoardingModel> onBoardingContents = [
  OnBoardingModel(
      title: 'Goal!',
      subtitle: 'You no go Like Know WhoScore?',
      image: LottieBuilder.asset(
        'lib/assets/images/goal1.json',
        fit: BoxFit.contain,
      )),
  OnBoardingModel(
      title: 'Till the Final Whistle',
      subtitle: 'We report from Start to the End',
      image: LottieBuilder.asset(
        'lib/assets/images/whistle.json',
        fit: BoxFit.contain,
      )),
  OnBoardingModel(
      title: 'Round the Clock',
      subtitle: 'All Sports events are brought to you',
      image: LottieBuilder.asset(
        'lib/assets/images/stopwatch.json',
        fit: BoxFit.contain,
      )),
];
