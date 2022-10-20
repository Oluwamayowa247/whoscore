import 'package:flutter/material.dart';
import 'package:scroll_navigation/navigation/title_scroll_navigation.dart';
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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'WhoScore?',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'FuzzyBubbles',
                  fontSize: 22,
                  fontWeight: FontWeight.w900),
            ),
          ),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 25,
                ),
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: SizeConfig.screenHeight! * 0.65,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      const Center(
                        child: Text(
                          'Enter your Ticket ID',
                          style: TextStyle(
                              fontFamily: 'FuzzyBubbles',
                              fontWeight: FontWeight.w700,
                              fontSize: 23),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: CustomTextField(
                            controller: _ticketIdController,
                            customHintText: 'Enter Your Ticket ID'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DropdownButton(
                          focusColor: Color(0xffF5F6FA),
                          items: <String>[
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
                            'Select a Betting Company',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _bettingCompany = value!;
                            });
                          }),
                      Text(
                        _bettingCompany,
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize: MaterialStatePropertyAll(
                            Size(300, 50),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Load Games',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 500,
                  child: TitleScrollNavigation(
                    bodyStyle: NavigationBodyStyle(),
                    barStyle: TitleNavigationBarStyle(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      activeColor: Colors.black,
                      background: Colors.white,
                      spaceBetween: 20,
                    ),
                    titles: [
                      "Ticket Status",
                      "Live Tickets",
                      "Tickets History",
                    ],
                    pages: [
                      Container(color: Colors.blue[50]),
                      Container(color: Colors.red[50]),
                      Container(color: Colors.green[50]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
