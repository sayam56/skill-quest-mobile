import 'package:Skill_Quest/authentication/g_auth.dart';
import 'package:Skill_Quest/view/pages/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.black87,
        actions: [
          InkWell(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard("This is Dashboard")))
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: const Row(
                children: <Widget>[
                  Text(
                    'Skip',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black87,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                margin: EdgeInsets.only(
                  top: 50,
                  left: MediaQuery.of(context).size.width * 0.097,
                ),
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                margin: EdgeInsets.only(
                  top: 2.5,
                  left: MediaQuery.of(context).size.width * 0.097,
                ),
                child: Text(
                  'Sign In To Get Started!',
                  style: TextStyle(
                      color: Color(0xff606365).withOpacity(0.6),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
      ),
    );
  }
}