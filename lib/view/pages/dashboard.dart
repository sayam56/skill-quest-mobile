import 'package:Skill_Quest/main.dart';
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
        backgroundColor: Colors.black87,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: kPrimaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
            color: kPrimaryColor,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(user.photoURL!),
            Text(
              'You are logged in as: ${user.displayName!}',
            ),
            Text(
              'With Email: ${user.email!}',
            ),
            Text(
              'Your UID: ${user.uid!}',
            ),
          ],
        ),
      ),
    );
  }
}
