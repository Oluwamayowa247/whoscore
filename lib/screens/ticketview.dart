import 'package:flutter/material.dart';
import 'package:whoscore/screens/dateview.dart';
import 'package:whoscore/screens/livescorescreen.dart';
// import 'package:tabbar/tabbar.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

import '../widgets/customtextfield.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  late final TextEditingController _ticketIdController =
      TextEditingController();
  late final PageController _pageController = PageController();
  late String _bettingCompany = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Container(
                height: SizeConfig.screenHeight! * 0.52,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const DefaultTextStyle(
                      style: TextStyle(decoration: TextDecoration.none),
                      child: Text(
                        'WhoScore?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25, left: 25),
                      child: Card(
                        child: CustomTextField(
                            controller: _ticketIdController,
                            customHintText: 'Enter Your BetSlip ID'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Card(
                      color: Colors.white,
                      child: DropdownButton(
                          focusColor: Color(0xffF5F6FA),
                          items: <String>[
                            ' ',
                            'Bet9ja',
                            'NairaBet',
                            'Bet365',
                            'KozaBet'
                          ]
                              .map<DropdownMenuItem<String>>(
                                (String value) => DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              )
                              .toList(),
                          hint: const Text(
                            'Select a Betting Platform',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _bettingCompany = value!;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: SizeConfig.screenWidth! * 0.74,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                          border:
                              Border.all(color: Color(0xffF5F5FA), width: 3)),
                      child: Text(
                        _bettingCompany,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.black),
                        minimumSize: const MaterialStatePropertyAll(
                          Size(280, 50),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Load games',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: SizeConfig.screenWidth! * 0.92,
              height: 720,
              child: DefaultTabController(
                length: 3,
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
                      // indicator: ,

                      tabs: [
                        Tab(
                          text: 'Livescore',
                        ),
                        Tab(
                          text: 'Ticket Status',
                        ),
                        Tab(
                          text: 'Ticket History',
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Container(
                        width: SizeConfig.screenWidth! * 0.95,
                        height: SizeConfig.screenHeight! * 0.88,
                        child: TabBarView(children: [
                          Container(
                            height: 200,
                            width: 50,
                            color: Colors.white,
                            child: Column(
                              children: [
                                DateView(),
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 50,
                            color: Colors.red,
                          ),
                          Container(
                            height: 200,
                            width: 50,
                            color: Colors.yellow,
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),

                // ])
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 // TabbarHeader(controller: _pageController, tabs: [
                      //   Tab(
                      //     child: Text('Ticket Status'),
                      //   ),
                      //   Tab(
                      //     child: Text('Ticket History'),
                      //   ),
                      // ]),
                      // TabbarContent(controller: _pageController, children: [
                      //   Container(color: Colors.yellow),
                      //   Container(color: Colors.red),
                      //   Container(color: Colors.purple),