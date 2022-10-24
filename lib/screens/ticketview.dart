import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
              child: Container(
                height: SizeConfig.screenHeight! * 0.6,
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
                            fontSize: 28),
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
                      color: Color(0xffF5F6FA),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
