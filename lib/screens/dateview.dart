import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import '../sizeconfig/size_config.dart';

class DateView extends StatefulWidget {
  const DateView({super.key});

  @override
  State<DateView> createState() => _DateViewState();
}

class _DateViewState extends State<DateView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: SizeConfig.screenWidth! * 0.95,
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              onDateChange: (selectedDate) {
                selectedDate == DateTime.now();
              },
              monthTextStyle:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
