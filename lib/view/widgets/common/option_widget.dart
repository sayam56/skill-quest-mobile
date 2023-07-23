import 'package:Skill_Quest/main.dart';
import 'package:flutter/material.dart';

class OptionWidget extends StatefulWidget {
  OptionWidget({Key? key}) : super(key: key);

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 50),
      child: TextButton(
        onPressed: () {
          // TODO: write logic to calculate if the option was correct
          // Move to the next quiz item.
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.red,
          backgroundColor: kPrimaryColor,
          elevation: 10,
          shadowColor: kPrimaryColor,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Text(
            'This is the first Option',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
