import 'package:flutter/material.dart';
import 'package:whoscore/model/sports_category_model.dart';
import 'package:whoscore/screens/bottom_nav_bar.dart';
import 'package:whoscore/screens/dateview.dart';
import 'package:whoscore/screens/matchview.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'WhoScore?',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'FuzzyBubbles',
                  fontSize: 22,
                  fontWeight: FontWeight.w900),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                  size: 25,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: SizeConfig.screenWidth!,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemExtent: SizeConfig.screenWidth! * 0.3,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 5, bottom: 8, top: 8, left: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  sportsCategory[index].sportsName,
                                  style: const TextStyle(
                                      fontFamily: 'FuzzyBubbles',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                sportsCategory[index].sportIcon,
                              ],
                            ),
                          ),
                        );
                      })),
                ),
                SizedBox(
                  height: 5,
                ),
                const DateView(),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Popular Competitions',
                    style: TextStyle(
                        fontFamily: 'FuzzyBubbles',
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                MatchView()
              ],
            ),
          ),
          backgroundColor: Colors.white,
          bottomNavigationBar: const BottomNavBar()),
    );
  }
}
