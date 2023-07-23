import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/view/pages/quiz_page.dart';
import 'package:flutter/material.dart';

class CareerQuizWidget extends StatefulWidget {
  const CareerQuizWidget({Key? key}) : super(key: key);

  @override
  State<CareerQuizWidget> createState() => _CareerQuizWidgetState();
}

class _CareerQuizWidgetState extends State<CareerQuizWidget> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(
            color: kPrimaryColor,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.question_mark_sharp,
                  color: kPrimaryColor,
                ),
                Text(
                  "Want To Take The Career Aptitude Test",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.question_mark_sharp,
                  color: kPrimaryColor,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.zero,
                          ),
                        ),
                      ),
                      child: IconButton.outlined(
                        onPressed: () {
                          // send to career quiz page
                          //Navigate to Course Details Page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizPage(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.check_box,
                          color: kPrimaryColor,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.zero,
                          ),
                        ),
                      ),
                      child: IconButton.outlined(
                        onPressed: () {
                          // remove the visibility of this widget
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: const Icon(
                          Icons.cancel,
                          color: kPrimaryColor,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
