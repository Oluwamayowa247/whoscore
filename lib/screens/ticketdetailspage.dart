import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:whoscore/sizeconfig/size_config.dart';
import 'package:http/http.dart' as http;
import '../model/ticket_details_model.dart';

class TicketDetailsPage extends StatefulWidget {
  const TicketDetailsPage({super.key});

  @override
  State<TicketDetailsPage> createState() => _TicketDetailsPageState();
}

class _TicketDetailsPageState extends State<TicketDetailsPage> {
  getTicketDetails() async {
    var url =
        'https://whoscore-ticket-id.herokuapp.com/tickets/bet9ja/B911RQCQQARPZP-3357263/';
    var response = await http.get(Uri.parse(url));
    var ticketDetailsJson = jsonDecode(response.body);

    List<TicketDetailsModel> ticketDetails = [];

    for (var u in ticketDetailsJson) {
      TicketDetailsModel ticketDetailsModel = TicketDetailsModel(
          u['betId'],
          u['totalOdds'],
          u['totalStakes'],
          u['ticketStatus'],
          u['totalGames'],
          u['gameDateTime'],
          u['game'],
          u['odd'],
          u['betScore'],
          u['gCheck'],
          u['gameStatus']);
      ticketDetails.add(ticketDetailsModel);
    }
    return ticketDetails;
  }

  late String price = '500';
  late String odds = '34.17';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: SizeConfig.screenWidth! * 0.6,
        height: SizeConfig.screenHeight! * 1.5,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  'B911RqCQQARPZP-3357263',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                      color: Color.fromARGB(255, 202, 202, 205)),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.27,
                ),
                Text(
                  'Pending',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 202, 202, 205)),
                ),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 232, 161, 1)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Total Stake(NGN): $price',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                      color: Color.fromRGBO(79, 79, 79, 1)),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.4,
                ),
                Text(
                  'Oct 31',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 202, 202, 205)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Total Odds: $odds',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                      color: Color.fromRGBO(79, 79, 79, 1)),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.55,
                ),
                Image.asset('lib/assets/images/sporty.png')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: SizeConfig.screenWidth! * 1.05,
              height: SizeConfig.screenHeight! * 1.14,
              //  height: SizeConfig.screenHeight! * 0.3,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TicketView(),
              // )
            )
          ],
        ),
      ),
    );
  }
}
