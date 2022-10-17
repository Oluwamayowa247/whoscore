import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:whoscore/model/livescore_model.dart';

class MatchView extends StatefulWidget {
  const MatchView({super.key});

  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  Future getScores() async {
    var response = await http
        .get(Uri.parse('https://whoscore-backend.herokuapp.com/livescores'));
    var jsonData = jsonDecode(response.body);
    List<LiveScore> scores = [];

    for (var u in jsonData) {
      LiveScore liveScore = LiveScore(
          u['awayTeam'], u['homeTeam'], u['gameScore'], u['currentMatchTime']);
      scores.add(liveScore);
    }
    print(scores.length);
    return scores;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            getScores();
          },
          child: Text('Click me')),
    );
  }
}
