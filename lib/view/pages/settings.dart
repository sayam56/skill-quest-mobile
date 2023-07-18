import 'package:Skill_Quest/main.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ),
      body: const Center(
        child: Text('Course List Page'),
      ),
    );
  }
}
