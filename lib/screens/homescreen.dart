import 'package:flutter/material.dart';
import 'package:whoscore/screens/bottom_nav_bar.dart';
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
                  color: Colors.white,
                  margin:
                      const EdgeInsets.only(bottom: 30, left: 10, right: 10),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemExtent: SizeConfig.screenWidth! * 0.3,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                                // children: [
                                //   Image.asset('name'),
                                //   Text('data')
                                // ],
                                ),
                          ),
                        );
                      })),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          bottomNavigationBar: const BottomNavBar()),
    );
  }
}
