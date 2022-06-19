// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challenge_01/global/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),

              //APPBAR
              const _customAppbar(),

              const SizedBox(
                height: 30,
              ),

              //HEADER
              const _customHeader(),
              const SizedBox(
                height: 20,
              ),

              //CONTENT ROW
              contentRowHeader(
                info: 'Classes',
                title: '5 Classes Today',
              ),

              const SizedBox(
                height: 20,
              ),

              //CTA CARD TILE
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffE1E4E3),
                ),
                width: double.infinity,
                height: 180,
                padding: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xffD0D8D3),
                              child: Text('🏹'),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'History',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                const Text('8:00 - 8:45',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey))
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(9)),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.video_call_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                              label: Text(
                                '|  Join Now  ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Image.asset(folder))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Home Works',
                    style: TextStyle(color: Color(0xff7D7D7D)),
                  ),
                  Text('View All', style: TextStyle(color: Color(0xff7D7D7D))),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(15)),
                          height: 200,
                          width: MediaQuery.of(context).size.width - 42),
                    ),
                    Positioned(
                      top: 40,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: _homeWorkContent(),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 223, 179, 193),
                              borderRadius: BorderRadius.circular(15)),
                          height: 200,
                          width: MediaQuery.of(context).size.width - 42),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _customHeader extends StatelessWidget {
  const _customHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Hello, ',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.normal),
          ),
          Text(
            'John',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class contentRowHeader extends StatelessWidget {
  final String title;
  final String info;
  bool isActionROw;
  VoidCallback? ontap;
  contentRowHeader({required this.title, required this.info})
      : isActionROw = false,
        ontap = null;

  contentRowHeader.Action({
    required this.title,
    required this.info,
    required this.ontap,
  }) : isActionROw = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          'Classes',
          style: TextStyle(color: Color(0xff7D7D7D)),
        ),
        Text('5 Classes Today', style: TextStyle(color: Color(0xff7D7D7D))),
      ],
    );
  }
}

class _customAppbar extends StatelessWidget {
  const _customAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          wave,
          height: 20,
        ),
        CircleAvatar(
          backgroundColor: Colors.blue,
        ),
        Icon(
          Icons.search_rounded,
          color: Colors.black,
        )
      ],
    );
  }
}

class _homeWorkContent extends StatelessWidget {
  const _homeWorkContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Physics'),
          subtitle: Text('⌛ 2 days left'),
          trailing: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('📚'),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffFFC7D4),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: Text('Newtons Law mothion'),
          subtitle: Text('Read screens 1.1 -1.2 pdf'),
          trailing: Icon(Icons.warning_outlined),
        ),
      ],
    );
  }
}
