import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/view/widgets/common/option_widget.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Quiz',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Text(
                    'Which animal describes your personality?',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    'Please choose your answer:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
                OptionWidget('Lion/Tiger'),
                OptionWidget('Wolf'),
                OptionWidget('Panda'),
                OptionWidget('Honeybee'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
