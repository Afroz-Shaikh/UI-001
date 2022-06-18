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
              SizedBox(
                height: 20,
              ),
              _customAppbar(),
              SizedBox(
                height: 20,
              ),
              _customHeader(),
              SizedBox(
                height: 20,
              ),
              contentRowHeader(),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color(0xffE1E4E3),
                elevation: 8,
                child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffE1E4E3),
                    ),
                    width: double.infinity,
                    height: 200,
                    padding: EdgeInsets.all(30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Color(0xffD0D8D3),
                                  child: Text('🏹'),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'History',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                    Text('8:00 - 8:45',
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
                                  borderRadius: BorderRadius.circular(15)),
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.wallet),
                                  label: Text('Join Now')),
                            )
                          ],
                        ),
                        Expanded(child: Image.asset(folder))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

class contentRowHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

class _customHeader extends StatelessWidget {
  const _customHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
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
