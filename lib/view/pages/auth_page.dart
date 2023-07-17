import 'package:Skill_Quest/view/pages/dashboard.dart';
import 'package:Skill_Quest/view/pages/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return Dashboard("Dashboard");
          } else {
            return SignUpPage();
          }
        },
      ),
    );
  }
}