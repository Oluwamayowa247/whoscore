// import 'package:flutter/material.dart';
// import 'package:whoscore/sizeconfig/size_config.dart';

// class ScoreView extends StatefulWidget {
//   final String awayTeam;
//   final String homeTeam;
//   final String matchDate;
//   final String currentMatchTime;
//   final String gameScore;

//   const ScoreView(
//       {super.key,
//       required this.awayTeam,
//       required this.homeTeam,
//       required this.matchDate,
//       required this.currentMatchTime,
//       required this.gameScore});

//   @override
//   State<ScoreView> createState() => _ScoreViewState();
// }

// class _ScoreViewState extends State<ScoreView> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey.shade800,
//                 blurRadius: 10,
//                 offset: Offset(0, 10),
//                 blurStyle: BlurStyle.outer)
//           ],
//           color: Colors.grey.shade400,
//         ),
//         width: SizeConfig.screenWidth! - 50,
//         height: 100,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Image.asset('lib/assets/images/cricket.png')
//             ],
//         ),
//       ),
//     );
//   }
// }
