class LiveScore {
  final String awayTeam, homeTeam, gameScore, currentMatchTime;

  LiveScore(
      this.awayTeam, this.homeTeam, this.gameScore, this.currentMatchTime);

  static LiveScore fromJson(json) => LiveScore(json['awayTeam'],
      json['homeTeam'], json['gameScore'], json['currentMatchTime']);
}
