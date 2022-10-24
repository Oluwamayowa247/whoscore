import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:whoscore/model/match_score_model.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class MatchView extends StatefulWidget {
  const MatchView({super.key});

  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  getScores() async {
    var url = 'https://whoscore-backend.herokuapp.com/livescores';
    var response = await http.get(Uri.parse(url));
    var scoresJson = jsonDecode(response.body);

    List<MatchScoreModel> matchscore = [];

    for (var u in scoresJson) {
      MatchScoreModel matchScoreModel = MatchScoreModel(
          u['awayTeam'],
          u['homeTeam'],
          u['competition'],
          u['gameScore'],
          u['currentMatchTime']);
      matchscore.add(matchScoreModel);
    }
    return matchscore;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        width: SizeConfig.screenWidth,
        child: Card(
          child: FutureBuilder(
            future: getScores(),
            builder: ((context, snapshot) {
              if (snapshot.data == null) {
                return const Center(
                  child: Text('Loading'),
                );
              } else {
                var data = (snapshot.data as List<MatchScoreModel>).toList();
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        shadowColor: Colors.greenAccent,
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'lib/assets/images/barcelona.png',
                                    height: 30,
                                    width: 20,
                                  ),
                                  Text(
                                    data[index].awayTeam,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    data[index].currentMatchTime,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    data[index].gameScore,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'lib/assets/images/chelsea.png',
                                    height: 30,
                                    width: 20,
                                  ),
                                  Text(
                                    data[index].homeTeam,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                );
              }
            }),
          ),
        ));
  }
}



// Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       'away Team',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           'Competition',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Game Score',
//                           style: TextStyle(fontSize: 12),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'HomeTeam',
//                       style: TextStyle(fontSize: 20),
//                     )
//                   ],
//                 ),
//               ),
//             );
//           }),
//           itemCount: 50)