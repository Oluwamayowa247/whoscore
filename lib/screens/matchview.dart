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
    return Consumer<MatchScoreProvider>(
      builder: ((context, value, child) {
        final scores = value.matchscores;
        //   final matches = scores[index];
        return Container(
          height: SizeConfig.screenHeight! * 0.65,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child: ListView.builder(
            itemCount: scores.length,
            itemBuilder: ((context, index) {
              final matches = scores[index];
              if (matches.competition == "premier-league") {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              width: 40,
                              height: 30,
                              image: NetworkImage(
                                matches.awayTeamLogo,
                              )),
                          Text(
                            matches.awayTeam,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(matches.currentMatchTime, style: TextStyle(fontWeight: FontWeight.w700),),
                              Text(matches.gameScore, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                            ],
                          ),
                           SizedBox(
                            width: 12,
                          ),
                          Text(matches.homeTeam),
                          Image(
                              width: 40,
                              height: 30,
                              image: NetworkImage(
                                matches.homeTeamLogo,
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              } else
                return Text('Hi');

              //   var matches = value.matchscores[index];
              // return Card(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Text(
              //         matches.homeTeam,
              //         style: TextStyle(fontSize: 12),
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: [
              //           Text(matches.competition),
              //           Text(matches.currentMatchTime),
              //           Text(matches.gameScore),
              //         ],
              //       ),
              //       Text(
              //         matches.awayTeam,
              //         style: TextStyle(fontSize: 12),
              //       ),
              //     ],
              //   ),
              // );
            }),
          ),
        );
      }),
    );
  }
}
