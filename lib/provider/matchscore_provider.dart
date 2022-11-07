import 'package:flutter/material.dart';
import 'package:whoscore/model/match_score_model.dart';
import 'package:whoscore/services/match_service.dart';

class MatchScoreProvider extends ChangeNotifier {
  final MatchService _service = MatchService();
  bool isLoading = false;
  List<MatchScoreModel> _matchscores = [];
  List<MatchScoreModel> get matchscores => _matchscores;

  Future<void> getAllScores() async {
    isLoading = true;
    notifyListeners();
    var response = await _service.getLiveScores();
    _matchscores = response;
    isLoading = false;
    notifyListeners();
  }
}
