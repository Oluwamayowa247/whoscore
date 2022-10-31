import 'package:flutter/material.dart';
import 'package:whoscore/screens/ticketdetailspage.dart';

import '../sizeconfig/size_config.dart';

class BetScreen extends StatefulWidget {
  const BetScreen({super.key});

  @override
  State<BetScreen> createState() => _BetScreenState();
}

class _BetScreenState extends State<BetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: SizeConfig.screenWidth! * 0.97,
      height: 735,
      child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                labelStyle: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Color.fromARGB(255, 202, 202, 205),
                indicatorColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Ticket Status',
                  ),
                  Tab(
                    text: 'Ticket History',
                  ),
                ],
              ),
              SizedBox(
                child: SizedBox(
                  width: SizeConfig.screenWidth! * 0.99,
                  height: SizeConfig.screenHeight! * 0.845,
                  child: TabBarView(
                    children: [
                    Container(
                      color: Colors.white,
                      
                      child: TicketDetailsPage(),
                    ),
                    Container(
                      color: Colors.white,
                    ),
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
