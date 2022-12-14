import 'package:flutter/material.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 1.05,
      height: SizeConfig.screenHeight! * 1.05,
      decoration: BoxDecoration(border: Border.all(width: 2), ),
    );
  }
}
