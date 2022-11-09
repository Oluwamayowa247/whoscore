class MatchScoreModel {
  String awayTeam;
  String homeTeam;
  String currentMatchTime;
  String gameScore;
  String awayTeamLogo;
  String homeTeamLogo;
  final String competition;
  MatchScoreModel(
      {required this.awayTeam,
      required this.homeTeam,
      required this.currentMatchTime,
      required this.gameScore,
      required this.competition,
      required this.awayTeamLogo,
      required this.homeTeamLogo});
//  String awayTeam, homeTeam, gameScore, currentMatchTime,
//  l String competition;

  // MatchScoreModel(this.awayTeam, this.homeTeam,
  // this.competition,
  //     this.gameScore, this.currentMatchTime);
}
