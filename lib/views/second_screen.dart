import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:ui_challenge_01/global/assets.dart';
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
                  color: Color(0xffF1F4FF),
                  height: MediaQuery.of(context).size.height - 200,
                  // width: double.infinity,
                  width: MediaQuery.of(context).size.width),
            ),
          ),
          Positioned(
            top: 70,
            child: GestureDetector(
              onVerticalDragDown: (details) {
                Navigator.of(context).pop();
              },
              child: Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
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
                      SizedBox(
                        height: 20,
                      ),
                      //!First Tile
                      TimelineTile(
                        isFirst: true,
                        hasIndicator: true,
                        afterLineStyle:
                            LineStyle(color: Colors.yellow, thickness: 2),
                        alignment: TimelineAlign.start,
                        endChild: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('10:00 - 10:45'),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color(0xffF9F5F2),
                                        child: ListTile(
                                          leading: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Container(
                                              color: Color(0xffF7EFE9),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('📙'),
                                              ),
                                            ),
                                          ),
                                          title: Text('Chemistrey'),
                                          subtitle: Text('Teacher - Anton Leo'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                width: 100,
                                // height: 150,
                                color: Colors.transparent)),
                        indicatorStyle: IndicatorStyle(
                            iconStyle: IconStyle(
                                iconData: Icons.circle,
                                color: Color(0xffFFC031)),
                            color: Color(0xffF6EEE8),
                            height: 20,
                            width: 20),
                      ),
                      //Second Tile
                      TimelineTile(
                        beforeLineStyle:
                            LineStyle(color: Colors.yellow, thickness: 2),
                        hasIndicator: true,
                        afterLineStyle:
                            LineStyle(color: Colors.blueGrey, thickness: 2),
                        alignment: TimelineAlign.start,
                        endChild: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('11:00 - 11:45'),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color(0xffEDF6F5),
                                        child: ListTile(
                                          leading: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Container(
                                              color: Color(0xffE3F0F0),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('📘'),
                                              ),
                                            ),
                                          ),
                                          title: Text('Chemistrey'),
                                          subtitle:
                                              Text('Teacher - Banton John'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                height: 170,
                                width: 100,
                                color: Colors.transparent)),
                        indicatorStyle: IndicatorStyle(
                            iconStyle: IconStyle(
                                iconData: Icons.circle,
                                color: Color(0xff93A5A4)),
                            color: Color(0xffE2EFEF),
                            height: 20,
                            width: 20),
                      ),
                      //!third
                      TimelineTile(
                        beforeLineStyle:
                            LineStyle(color: Colors.blueGrey, thickness: 2),
                        hasIndicator: true,
                        afterLineStyle:
                            LineStyle(color: Colors.grey, thickness: 2),
                        alignment: TimelineAlign.start,
                        endChild: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                                child: Column(
                                  verticalDirection: VerticalDirection.down,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('12:00 -12:45'),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          color: Color(0xffF5F2FF),
                                          child: Column(
                                            children: [
                                              ListTile(
                                                leading: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Container(
                                                    color: Color(0xffECE9FF),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Text('🏃🏻‍♂️'),
                                                    ),
                                                  ),
                                                ),
                                                title:
                                                    Text('Physical Education'),
                                                subtitle: Text(
                                                    'Teacher - Mr Gucchian'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20),
                                                child: Positioned(
                                                  left: 70,
                                                  child: Text(
                                                      'Intensive preparation for the junior world championship in New York'),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                height: 60,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 10,
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.red,
                                                        backgroundImage:
                                                            NetworkImage(
                                                                student1),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 40,
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.green,
                                                        backgroundImage:
                                                            NetworkImage(
                                                                student2),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 70,
                                                      child: CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                student3),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      right: 10,
                                                      child: CircleAvatar(
                                                        child: Text('24+',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                        backgroundColor:
                                                            Colors.black,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                                height: 280,
                                width: 100,
                                color: Colors.transparent)),
                        indicatorStyle: IndicatorStyle(
                            iconStyle: IconStyle(
                                iconData: Icons.circle, color: Colors.purple),
                            color: Color(0xffEAE7FC),
                            height: 20,
                            width: 20),
                      ),
                    ],
                  ),
                ),
                // width: double.infinity,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // color: Colors.greenAccent,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
