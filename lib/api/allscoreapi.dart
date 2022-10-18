// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'package:whoscore/model/livescore_model.dart';

// class LiveScoreApi {
//   static Future<List<LiveScore>> getScores() async {
//     const url = "https://whoscore-backend.herokuapp.com/livescores";
//     final response = await http.get(Uri.parse(url));
//     final body = jsonDecode(response.body);
//     return body.map<LiveScore>(LiveScore.fromJson(json));
//   }
// }
// Future <List<LiveScore>> getScores(BuildContext context){
//   return 
// }
