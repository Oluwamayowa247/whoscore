import 'package:flutter/material.dart';
import 'package:whoscore/sizeconfig/size_config.dart';

class ComingSoonPage extends StatefulWidget {
  const ComingSoonPage({super.key});

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/images/champions.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.35,
              ),
              Text(
                'Coming',
                style: TextStyle(
                    fontSize: 55,
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 4),
              ),
              Text(
                'Soon',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Stay Tuned',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 3),
                      //  backgroundColor: Colors.teal,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ),
                    OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 3),
                      //  backgroundColor: Colors.teal,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'About Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
