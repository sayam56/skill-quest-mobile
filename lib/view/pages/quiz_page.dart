import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/model/questions_list.dart';
import 'package:Skill_Quest/view/widgets/common/option_widget.dart';
import 'package:Skill_Quest/view/widgets/noble/quiz.dart';
import 'package:Skill_Quest/view/widgets/noble/result.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _aptitudeQuestions = questionsList;

  void _answerQuestion(int score) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Add Your Code here.
      _totalScore += score;

      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      // ignore: avoid_print
      print(_questionIndex);
      if (_questionIndex < _aptitudeQuestions.length) {
        // ignore: avoid_print
        print('We have more questions!');
      } else {
        // ignore: avoid_print
        print('No more questions!');
      }
    });
  }

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
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: _questionIndex < _aptitudeQuestions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _aptitudeQuestions,
                ) //Quiz
              : Result(_totalScore),
        ),
      ),
    );
  }
}
