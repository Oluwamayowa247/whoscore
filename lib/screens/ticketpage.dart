import 'package:flutter/material.dart';

import '../sizeconfig/size_config.dart';
import '../widgets/customtextfield.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  late final TextEditingController _ticketIdController =
      TextEditingController();
  // late final PageController _ticketPageController = PageController();
  late String _bettingCompany = '';
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        fontFamily: 'RussoOne',
                        fontWeight: FontWeight.w700,
                        fontSize: 27),
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
                  height: 10,
                ),
                Container(
                  width: SizeConfig.screenWidth! * 0.74,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Color(0xffF5F5FA), width: 3)),
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
      ],
    );
  }
}
