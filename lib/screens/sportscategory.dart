import 'package:flutter/material.dart';
import 'package:whoscore/model/sports_category_model.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class SportsCategory extends StatefulWidget {
  const SportsCategory({super.key});

  @override
  State<SportsCategory> createState() => _SportsCategoryState();
}

class _SportsCategoryState extends State<SportsCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth!,
      height: SizeConfig.screenHeight!*0.13,
      decoration: BoxDecoration(
          color: Colors.grey.shade400, borderRadius: BorderRadius.circular(8)),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sportsCategory.length,
        itemExtent: SizeConfig.screenWidth! * 0.27,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    sportsCategory[index].sportsName,
                    style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  sportsCategory[index].sportIcon,
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
