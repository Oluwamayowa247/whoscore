import 'package:flutter/material.dart';
import 'package:whoscore/screens/betscreen.dart';
import 'package:whoscore/screens/dateview.dart';
import 'package:whoscore/screens/matchview.dart';
import 'package:whoscore/screens/sportscategory.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({super.key});

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  late final PageController _ticketPageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: SizeConfig.screenWidth! * 0.98,
      height: 740,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              labelStyle: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromARGB(255, 202, 202, 205),
              indicatorColor: Colors.grey,
              // indicator: ,

              tabs: [
                Tab(
                  text: 'Livescore',
                ),
                Tab(
                  text: 'Betting History',
                ),
                Tab(
                  text: 'Explore',
                ),
              ],
            ),
            SizedBox(
              child: SizedBox(
                width: SizeConfig.screenWidth! * 0.96,
                height: SizeConfig.screenHeight! * 0.91,
                child: TabBarView(children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        SportsCategory(),
                        SizedBox(
                          height: 5,
                        ),
                        DateView(),
                        SizedBox(
                          height: 5,
                        ),
                        MatchView()
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: BetScreen(),
                  ),
                  Container(
                    height: 200,
                    width: 50,
                    color: Colors.yellow,
                  ),
                ]),
              ),
            ),
          ],
        ),

        // ])
      ),
    );
  }
}
