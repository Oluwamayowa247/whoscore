import 'package:flutter/material.dart';
import 'package:whoscore/screens/categorybar.dart';
import 'package:whoscore/screens/ticketpage.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Transform.scale(
          scale: 1,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 230),
            child: FloatingActionButton(
              isExtended: true,
              onPressed: () {},
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: SizeConfig.screenWidth,
                height: 50,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 202, 202, 205),
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      color: Color.fromARGB(255, 202, 202, 205),
                      width: 10,
                      thickness: 2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Watch',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 202, 202, 205),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TicketPage(),
              SizedBox(
                height: 15,
              ),
              CategoryBar()
              // TicketView(),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        // bottomNavigationBar: const BottomNavBar()
      ),
    );
  }
}
