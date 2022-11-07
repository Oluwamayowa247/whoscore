import 'dart:convert';
import 'package:whoscore/model/match_score_model.dart';
import 'package:http/http.dart' as http;

class MatchService {
  Future<List<MatchScoreModel>> getLiveScores() async {
    const url = 'https://whoscore-backend.herokuapp.com/livescores';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final scores = json.map((e) {
        return MatchScoreModel(
            awayTeam: e['awayTeam'],
            homeTeam: e['homeTeam'],
            currentMatchTime: e['currentMatchTime'],
            gameScore: e['gameScore'],
            competition: e['competition']);
      }).toList();
      return scores;
    }
    throw 'Something went wrong';
    //  return [];
  }
}
