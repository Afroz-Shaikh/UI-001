import 'package:flutter/material.dart';

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
