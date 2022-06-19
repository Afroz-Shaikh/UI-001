// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
