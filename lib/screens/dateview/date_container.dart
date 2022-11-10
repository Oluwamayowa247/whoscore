import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whoscore/screens/dateview/dateview.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class DateContainer extends StatefulWidget {
  const DateContainer({super.key});

  @override
  State<DateContainer> createState() => _DateContainerState();
}

class _DateContainerState extends State<DateContainer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
           height: 80,
          width: SizeConfig.screenWidth! * 1.3,
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Image.asset('lib/assets/images/live2.png', width: 60, height: 50,),
              ),
    
              DateView(),
    
            ],
          ),
      ),
    );
  }
}