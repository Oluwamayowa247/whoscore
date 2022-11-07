import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:whoscore/model/ticket_details_model.dart';
import 'package:whoscore/sizeconfig/size_config.dart';
import 'package:http/http.dart' as http;

class TicketMatchView extends StatefulWidget {
  const TicketMatchView({super.key});

  @override
  State<TicketMatchView> createState() => _TicketMatchViewState();
}

class _TicketMatchViewState extends State<TicketMatchView> {
  // getTicketDetails() async {
  //   var url =
  //       'https://whoscore-ticket-id.herokuapp.com/tickets/bet9ja/B911RQCQQARPZP-3357263/';
  //   var response = await http.get(Uri.parse(url));
  //   var ticketDetailsJson = jsonDecode(response.body);

  //   List<TicketDetailsModel> ticketDetails = [];

  //   for (var u in ticketDetailsJson) {
  //     TicketDetailsModel ticketDetailsModel = TicketDetailsModel(
  //         u['betId'],
  //         u['totalOdds'],
  //         u['totalStakes'],
  //         u['ticketStatus'],
  //         u['totalGames'],
  //         u['gameDateTime'],
  //         u['game'],
  //         u['odd'],
  //         u['betScore'],
  //         u['gCheck'],
  //         u['gameStatus']);
  //     ticketDetails.add(ticketDetailsModel);
  //   }
  //   return ticketDetails;
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: SizeConfig.screenWidth! * 1.05,
        //  height: SizeConfig.screenHeight! * 0.3,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
        ),
      ),
    );
  }
}
