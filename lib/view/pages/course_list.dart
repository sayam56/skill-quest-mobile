import 'package:Skill_Quest/main.dart';
import 'package:flutter/material.dart';

class CourseList extends StatefulWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Course Lists',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: const Center(
          child: Text(
            'Course List Page',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
