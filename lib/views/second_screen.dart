import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge_01/widgets/subject_tile.dart';

class TimeLineScreen extends StatelessWidget {
  const TimeLineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   leading: GestureDetector(
      //       onTap: () {
      //         Navigator.of(context).pop();
      //       },
      //       child: Icon(Icons.arrow_back_ios_new_sharp)),
      // ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: GestureDetector(
              onVerticalDragDown: (details) {
                Navigator.of(context).pop();
              },
              child: Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height - 200,
                  // width: double.infinity,
                  width: MediaQuery.of(context).size.width),
            ),
          ),
          Positioned(
            top: 70,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Timeline(children: <TimelineModel>[
                    TimelineModel(SubjectTile(
                        Primarycolor: Colors.blue,
                        emoji: '🍔',
                        Secoondarycolor: Colors.blueAccent,
                        title: 'Maths',
                        subtitle: 'Read maths ')),
                  ]),
                ],
              ),
              // width: double.infinity,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // color: Colors.greenAccent,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
