import 'package:flutter/material.dart';

class SportsCategoryModel {
  final IconButton sportIcon;
  final String sportsName;
  SportsCategoryModel({
    required this.sportIcon,
    required this.sportsName,
  });
}

List<SportsCategoryModel> sportsCategory = [
  SportsCategoryModel(
      sportIcon: IconButton(
          // focusColor: Colors.grey.shade900,
          //   hoverColor: Colors.grey.shade900,
          onPressed: () {},
          icon: Image.asset(
            'lib/assets/images/football.png',
            height: 50,
            width: 40,
          )),
      sportsName: 'Football'),
  SportsCategoryModel(
      sportIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'lib/assets/images/basketball.png',
            height: 50,
            width: 30,
          )),
      sportsName: 'BasketBall', ),
  SportsCategoryModel(
      sportIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'lib/assets/images/cricket.png',
            height: 50,
            width: 30,
          )),
      sportsName: 'Cricket'),
  SportsCategoryModel(
      sportIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'lib/assets/images/hockey.png',
            height: 50,
            width: 30,
          )),
      sportsName: 'Hockey'),
  SportsCategoryModel(
      sportIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'lib/assets/images/rugby.png',
            height: 50,
            width: 30,
          )),
      sportsName: 'Rugby'),
  SportsCategoryModel(
      sportIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'lib/assets/images/tennis.png',
            height: 50,
            width: 30,
          )),
      sportsName: 'Tennis'),
];

// List<SportsCategoryModel> sportsCategory = [
//   SportsCategoryModel(
//       sportIcon: Image.asset(
//         'lib/assets/images/football.png',
//         width: 30,
//         height: 50,
//       ),
//       sportsName: 'Football'),
//   SportsCategoryModel(
//       sportIcon: Image.asset(
//         'lib/assets/images/basketball.png',
//         width: 20,
//         height: 30,
//       ),
//       sportsName: 'Football'),
//   SportsCategoryModel(
//       sportIcon: Image.asset(
//         'lib/assets/images/cricket.png',
//         width: 20,
//         height: 30,
//       ),
//       sportsName: 'Football'),
//   SportsCategoryModel(
//       sportIcon: Image.asset(
//         'lib/assets/images/hockey.png',
//         width: 20,
//         height: 30,
//       ),
//       sportsName: 'Football'),
//   SportsCategoryModel(
//       sportIcon: Image.asset(
//         'lib/assets/images/rugby.png',
//         width: 20,
//         height: 30,
//       ),
//       sportsName: 'Football'),
//   SportsCategoryModel(
//       sportIcon: Image.asset(
//         'lib/assets/images/tennis.png',
//         width: 20,
//         height: 30,
//       ),
//       sportsName: 'Football'),
// ];
