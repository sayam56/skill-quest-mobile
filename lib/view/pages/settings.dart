import 'package:Skill_Quest/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // open dialog
                String text =
                    'Get In Touch With Skill Quest Team. \nEmail Us At: sq_support@skillquest.com';
                showDialog(text);
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 45,
                  left: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyBold.heart,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Help & Support',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // open dialog
                String text = 'We Are SKILL QUEST!.';
                showDialog(text);
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 45,
                  left: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyBold.user_3,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'About Us',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // open dialog
                String text =
                    'We are about your privacy. \nNo personal usage data is saved except for \ncourse information and aptitude test.';
                showDialog(text);
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 45,
                  left: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyBold.hide,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // open dialog
                String text = 'All rights reserved at Skill Quest Team.';
                showDialog(text);
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 45,
                  left: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyBold.document,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                signUserOut();
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 45,
                  left: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyBold.logout,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDialog(String text) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: kPrimaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 25,
                    ),
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
