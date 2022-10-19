import 'package:flutter/material.dart';
import 'package:whoscore/model/bottom_bar_model.dart';
import 'package:whoscore/screens/ticketidpage.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomBarModel(
              icon: IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              iconText: 'Home'),
          BottomBarModel(
              icon: IconButton(
                icon: const Icon(
                  Icons.video_camera_back,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              iconText: 'Watch'),
          BottomBarModel(
              icon: IconButton(
                icon: const Icon(
                  Icons.note_add,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TicketIDPage()));
                },
              ),
              iconText: 'Ticket ID'),
          BottomBarModel(
              icon: IconButton(
                icon: const Icon(
                  Icons.newspaper,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              iconText: 'News'),
        ],
      ),
    );
  }
}
