// ignore_for_file: avoid_print

import 'package:Skill_Quest/main.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore, {Key? key}) : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 37) {
      resultText = 'You are a TECHIE! \nYou should choose Tech Courses.';
      // print(resultScore);
    } else if (resultScore >= 25) {
      resultText = 'You are a SELLER! \nYou should choose Sales Courses.';
      // print(resultScore);
    } else {
      resultText = 'You are a MARKETER! \nYou should choose Marketing Courses.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ), //Text
          // Text(
          //   'Score ' '$resultScore',
          //   style: const TextStyle(
          //     fontSize: 36,
          //     fontWeight: FontWeight.bold,
          //     color: kPrimaryColor,
          //   ),
          //   textAlign: TextAlign.center,
          // ), //Text
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kPrimaryColor,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
