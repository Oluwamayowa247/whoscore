// import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

import '../../sizeconfig/size_config.dart';

class DateView extends StatefulWidget {
  const DateView({super.key});

  @override
  State<DateView> createState() => _DateViewState();
}

class _DateViewState extends State<DateView> {
  @override
  Widget build(BuildContext context) {
    final dates = List<DateTime>.generate(
      5,
      (i) => DateTime.utc(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
      ).add(
        Duration(days: i),
      ),
    );
    return DateWidget(context: context, index: dates.length);
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
    required this.context,
    required this.index,
  }) : super(key: key);

  final BuildContext context;
  final int index;

  @override
  Widget build(BuildContext context) {
    //  final days = DateTime.now();
//    final _days = days.subtract(Duration(days: days.weekday));
    final dates = List<DateTime>.generate(
      4,
      (i) => DateTime.utc(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
      ).add(
        Duration(days: i),
      ),
    );
    // DateFormat.

    return Padding(
      padding: const EdgeInsets.only( top: 5, bottom: 5),
      child: Container(
          height: 80,
          width: SizeConfig.screenWidth! * 0.95,
          color: Colors.grey.shade200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            DateFormat.E().format(dates[index]),
                            style:
                                TextStyle(fontFamily: 'Quicksand', fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                DateFormat.d().format(dates[index]),
                                style: TextStyle(
                                    fontFamily: 'Quicksand', fontSize: 15,  fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                DateFormat.LLL().format(dates[index]),
                                style: TextStyle(
                                    fontFamily: 'Quicksand', fontSize: 15,  fontWeight: FontWeight.w600),
                              )
                              //     Text(
                              //
                              // ),
                              //       style: TextStyle(

                              //),
                              //     ),
                              //   ],
                              // ),
                            ],
                          )
                        ],
                      ),
                    )

                    // Row(
                    //   children: [
                  ],
                );
              })),
    );
    //  Row(
    //   children: [
    //     Text(dates[index].year.toString()),
    //     Text(dates[index].day.toString())
    //   ],
    // ),
    // child: Padding(
    //   padding: const EdgeInsets.only(
    //     left: 5.0,
    //   ),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       DatePicker(
    //         DateTime.now(),
    //         initialSelectedDate: DateTime.now(),
    //         selectionColor: Colors.black,
    //         selectedTextColor: Colors.white,
    //         onDateChange: (selectedDate) {
    //           selectedDate == DateTime.now();
    //         },
    //         monthTextStyle:
    //             const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
    //       )
    //     ],
    //   ),
    // ),
  }
}
