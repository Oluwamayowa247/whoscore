import 'package:flutter/material.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/navigation/title_scroll_navigation.dart';
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
        width: SizeConfig.screenWidth,
        height: 1000,
        child: TitleScrollNavigation(
          barStyle: const TitleNavigationBarStyle(
              spaceBetween: 30,
              activeColor: Colors.black,
              deactiveColor: Colors.grey,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          titles: const [
            "Premier League",
            "La-Liga",
            "Ligue 1",
            "Serie A",
            "Nacional",
          ],
          pages: [
            Container(
              height: 100,
              color: Colors.blue[50],
              child: ListView.builder(itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Text(
                      'Mayor is mad',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                );
              })),
            ),
            Container(
              height: 100,
              color: Colors.red[50],
            ),
            Container(height: 100, color: Colors.green[50]),
            Container(height: 100, color: Colors.purple[50]),
            Container(height: 100, color: Colors.yellow[50]),
          ],
        ));
  }
}

// return Padding(
//   padding: const EdgeInsets.all(15.0),
//   child: Container(
//     height: 500,
//     child: ListView.builder(
//         itemCount: 50,
//         itemBuilder: ((context, index) {
//           return Container(
//             height: 100,
//             width: SizeConfig.screenWidth,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.shade400,
//                       blurRadius: 10,
//                       offset: Offset(0, 15),
//                       blurStyle: BlurStyle.outer),
//                 ]),
//           );
//         })),
//   ),
// );
