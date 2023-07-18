import 'package:Skill_Quest/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(user.photoURL!),
              Text(
                'You are logged in as: ${user.displayName!}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'With Email: ${user.email!}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Your UID: ${user.uid!}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
