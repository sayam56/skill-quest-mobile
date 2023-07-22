import 'package:Skill_Quest/main.dart';
import 'package:flutter/material.dart';

class CourseTile extends StatefulWidget {
  final int index;

  const CourseTile(this.index, {super.key});

  @override
  State<CourseTile> createState() => _CourseTileState();
}

class _CourseTileState extends State<CourseTile> {
  @override
  Widget build(BuildContext context) {
    int? itemCount = widget.index;
    return Card(
      elevation: 15,
      color: Colors.transparent,
      borderOnForeground: false,
      shadowColor: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 8,
            ),
            Image.asset(
              "assets/images/courseIcon.png",
              height: 100,
              width: 100,
            ),
            Text(
              'Course Name $itemCount',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
