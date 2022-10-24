import 'package:flutter/material.dart';
import 'package:whoscore/model/sports_category_model.dart';
import 'package:whoscore/screens/bottom_nav_bar.dart';
import 'package:whoscore/screens/dateview.dart';
import 'package:whoscore/screens/matchview.dart';
import 'package:whoscore/screens/ticketidpage.dart';
import 'package:whoscore/screens/ticketview.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth,
                  height: 50,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 202, 202, 205),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: Color.fromARGB(255, 202, 202, 205),
                        width: 10,
                        thickness: 2,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Watch',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 202, 202, 205),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
             
                const SizedBox(
                  height: 10,
                ),
                TicketView(),
                SizedBox(
                  height: 30,
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
                                      fontFamily: 'Quicksand',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
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
                const SizedBox(
                  height: 5,
                ),
                const DateView(),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Popular Competitions',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
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
