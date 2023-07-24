import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/model/courses_name.dart';
import 'package:Skill_Quest/view/widgets/common/courseTile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String title;

  const Dashboard(this.title, {super.key});

  @override
  State<Dashboard> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  final user = FirebaseAuth.instance.currentUser!;
  final mainItems = courseNames;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: enrolled == null
            ? const Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'You Are Not Enrolled In Any Courses At The Moment.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                ),
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 25,
                ),
                itemCount: enrolledCourseIndex.length,
                itemBuilder: (context, index) {
                  return CourseTile(mainItems[enrolledCourseIndex[index]],
                      enrolledCourseIndex[index], true);
                },
              ),
      ),
    );
  }
}
