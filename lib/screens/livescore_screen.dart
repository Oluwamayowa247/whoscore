import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MatchView extends StatefulWidget {
  const MatchView({super.key});

  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  List scores = [];

  fetchScores() async {
    http.Response response = await http.get(
      Uri.parse('https://whoscore-backend.herokuapp.com/livescores'),
    );
    setState(() {
      scores = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchScores();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: scores == null
          ? Center(
              child: CircularProgressIndicator(
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            )
          : ListView.builder(
              itemCount: scores.length,
              itemBuilder: (((context, index) {
                return Container(
                  height: 80,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            blurRadius: 10,
                            offset: const Offset(0, 15),
                            blurStyle: BlurStyle.outer),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 5, left: 10),
                        child: Image.asset(
                          'lib/assets/images/football.png',
                          width: 30,
                          height: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Text(
                              scores[index]['awayTeam'],
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      
                      Text(scores[index]['currentMatchTime']),
                      // Text(scores[index]['competition']),
                      Text(scores[index]['gameScore'])
                    ],
                  ),
                );
              })),
            ),
    );
  }
}
