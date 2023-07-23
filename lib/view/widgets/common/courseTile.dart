import 'package:Skill_Quest/view/pages/course_details.dart';
import 'package:flutter/material.dart';

class CourseTile extends StatefulWidget {
  final String index;

  const CourseTile(this.index, {super.key});

  @override
  State<CourseTile> createState() => _CourseTileState();
}

class _CourseTileState extends State<CourseTile> {
  @override
  Widget build(BuildContext context) {
    String? itemName = widget.index;
    return InkWell(
      onTap: () {
        //Navigate to Course Details Page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CourseDetails(itemName)),
        );
      },
      child: Card(
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
                height: 4,
              ),
              Image.asset(
                "assets/images/courseIcon.png",
                height: 80,
                width: 80,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Course $itemName',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
