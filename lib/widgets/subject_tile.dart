import 'package:flutter/material.dart';

class SubjectTile extends StatelessWidget {
  final Color Primarycolor;
  final String title;
  final String subtitle;
  final String emoji;
  final Color Secoondarycolor;

  const SubjectTile(
      {super.key,
      required this.Primarycolor,
      required this.emoji,
      required this.Secoondarycolor,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Primarycolor,
      ),
      child: ListTile(
        leading: EmojiContainer(
          color: Secoondarycolor,
          emoji: emoji,
        ),
      ),
    );
  }
}

class EmojiContainer extends StatelessWidget {
  final String emoji;
  final Color color;

  const EmojiContainer({super.key, required this.emoji, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(emoji),
      ),
    );
  }
}
