import 'package:flutter/material.dart';

import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:whoscore/sizeconfig/size_config.dart';
import 'package:whoscore/widgets/customtextfield.dart';

class TicketIDPage extends StatefulWidget {
  const TicketIDPage({super.key});

  @override
  State<TicketIDPage> createState() => _TicketIDPageState();
}

class _TicketIDPageState extends State<TicketIDPage> {
  late final TextEditingController _ticketIdController =
      TextEditingController();
  late String _bettingCompany = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                child: Container(
                  height: SizeConfig.screenHeight! * 0.55,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      const Center(
                        child: Text(
                          'WhoScore?',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              fontSize: 28),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32, left: 32),
                        child: CustomTextField(
                            controller: _ticketIdController,
                            customHintText: 'Enter Your BetSlip ID'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DropdownButton(
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
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9))),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black),
                          minimumSize: const MaterialStatePropertyAll(
                            Size(300, 50),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Load games',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),

                      // SizedBox(
                      //   height: 30,
                      // ),
                    ],
                  ),
                ),
              ),
              Transform.scale(
                scale: 1.2,
                child: FloatingActionButton(
                  isExtended: true,
                  onPressed: () {},
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 40,
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: SizedBox(
              //     height: 200,
              //     child: TitleScrollNavigation(
              //       bodyStyle: NavigationBodyStyle(),
              //       barStyle: TitleNavigationBarStyle(
              //         style:
              //             TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              //         padding: EdgeInsets.symmetric(horizontal: 40.0),
              //         activeColor: Colors.black,
              //         background: Colors.white,
              //         spaceBetween: 20,
              //       ),
              //       titles: [
              //         "Ticket Status",
              //         "Live Tickets",
              //         "Tickets History",
              //       ],
              //       pages: [
              //         Container(color: Colors.blue[50]),
              //         Container(color: Colors.red[50]),
              //         Container(color: Colors.green[50]),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
