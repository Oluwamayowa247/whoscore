import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whoscore/provider/matchscore_provider.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class MatchView extends StatefulWidget {
  const MatchView({super.key});

  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<MatchScoreProvider>(context, listen: false).getAllScores();
    });
  }

  @override
  Widget build(BuildContext context) {
    // List epl = [];
    // List liliga = [];
    // int index = 0;
    return Consumer<MatchScoreProvider>(
      builder: ((context, value, child) {
        if (value.isLoading) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.black,
            ),
          );
        }
        final scores = value.matchscores;

        //   final matches = scores;

        return Container(
          height: SizeConfig.screenHeight! * 0.65,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child: ListView.builder(
            itemCount: scores.length,
            itemBuilder: ((context, index) {
              final matches = scores[index];
              // final matches = scores[index];
              // if (matches.competition == "v-league") {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: SizeConfig.screenWidth! * 0.9,
                  height: SizeConfig.screenHeight! * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
            //        border: Border.all(color: Colors.grey.shade700, width: 3)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        width: 40,
                        height: 30,
                        image: NetworkImage(
                          matches.awayTeamLogo,
                        ),
                      ),
                      Text(
                        matches.awayTeam,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            fontFamily: 'Quicksand'),
                      ),
                      // Column(
                      //   children: [
                      //     SizedBox(
                      //       height: 10,
                      //     ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            matches.currentMatchTime,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                // color: Colors.white,
                                fontFamily: 'Quicksand'),
                          ),
                          CircleAvatar(
                            minRadius: 17,
                            backgroundColor: Colors.black,
                            child: Text(
                              matches.gameScore,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Quicksand'),
                            ),
                          ),
                        ],
                      ),
                      //  SizedBox(
                      //   height: 10,
                      // ),
                      // CircleAvatar(
                      //   backgroundColor: Colors.black,
                      //   minRadius: 15,
                      //   child:

                      //   ],
                      // ),
                      Text(
                        matches.homeTeam,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            fontFamily: 'Quicksand'),
                      ),
                      Image(
                        width: 40,
                        height: 30,
                        image: NetworkImage(
                          matches.homeTeamLogo,
                        ),
                      ),

                      // Text(matches.homeTeam),
                      //     Text(matches.currentMatchTime),
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      }),
    );
  }
}
