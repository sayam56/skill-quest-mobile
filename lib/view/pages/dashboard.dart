import 'package:Skill_Quest/main.dart';
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
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to horizontal, this produces 2 rows
          crossAxisCount: 2,
          padding: const EdgeInsets.all(25),
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          children: List.generate(
            10,
            (index) {
              return CourseTile("$index");
            },
          ),
        ),
      ),
    );
  }
}
