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
    return Consumer<MatchScoreProvider>(builder: ((context, value, child) {
      final scores = value.matchscores;
      return SizedBox(
        height: SizeConfig.screenHeight! * 0.65,
        width: SizeConfig.screenWidth,
        child: ListView.builder(
            itemCount: scores.length,
            itemBuilder: ((context, index) {
              final matches = scores[index];
              //   var matches = value.matchscores[index];
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(matches.homeTeam, style: TextStyle(fontSize: 12),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(matches.currentMatchTime),
                        Text(matches.gameScore),
                      ],
                    ),
                    Text(matches.awayTeam, style: TextStyle(fontSize: 12),)
                  ],
                ),
              );
            })),
      );
    }));
  }
}
  //   return SizedBox(
  //       height: SizeConfig.screenHeight! * 0.65,
  //       width: SizeConfig.screenWidth,
  //       child: Card(
  //         child: FutureBuilder(
  //           future: getScores(),
  //           builder: ((context, snapshot) {
  //             if (snapshot.data == null) {
  //               return const Center(
  //                 child: Text('Loading'),
  //               );
  //             } else {
  //               var data = (snapshot.data as List<MatchScoreModel>).toList();
  //               return ListView.builder(
  //                 itemCount: data.length,
  //                 itemBuilder: ((context, index) {
  //                   return Padding(
  //                     padding: const EdgeInsets.all(5.0),
  //                     child: Card(
  //                       shadowColor: Colors.greenAccent,
  //                       color: Colors.grey.shade100,
  //                       child: Padding(
  //                         padding: const EdgeInsets.only(
  //                             right: 10, left: 10, top: 10, bottom: 10),
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                           children: [
  //                             Column(
  //                               children: [
  //                                 Image.asset(
  //                                   'lib/assets/images/barcelona.png',
  //                                   height: 30,
  //                                   width: 20,
  //                                 ),
  //                                 Text(
  //                                   data[index].awayTeam,
  //                                   style: TextStyle(
  //                                     fontSize: 12,
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                             Column(
  //                               children: [
  //                                 Text(
  //                                   data[index].currentMatchTime,
  //                                   style: TextStyle(
  //                                       fontSize: 12,
  //                                       fontWeight: FontWeight.w700),
  //                                 ),
  //                                 SizedBox(
  //                                   height: 12,
  //                                 ),
  //                                 Text(
  //                                   data[index].gameScore,
  //                                   style: TextStyle(
  //                                       fontSize: 13,
  //                                       fontWeight: FontWeight.w600),
  //                                 ),
  //                               ],
  //                             ),
  //                             Column(
  //                               children: [
  //                                 Image.asset(
  //                                   'lib/assets/images/chelsea.png',
  //                                   height: 30,
  //                                   width: 20,
  //                                 ),
  //                                 Text(
  //                                   data[index].homeTeam,
  //                                   style: TextStyle(
  //                                     fontSize: 12,
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   );
  //                 }),
  //               );
  //             }
  //           }),
  //         ),
  //       ));
  // }