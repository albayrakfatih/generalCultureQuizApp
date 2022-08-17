import 'package:flutter/material.dart';
import '../constants.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {Key? key,
      required this.question,
      required this.indexAction,
      required this.totalQuestions})
      : super(key: key);

  final String question;
  final int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Soru:  ${indexAction + 1}/$totalQuestions",
                style: TextStyle(fontSize: 18.0, color: neutral),
              ),
            ),
          ],
        ),
        Divider(
          height: 20,
          color: Colors.transparent,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            //'Question ${indexAction + 1}/$totalQuestions:
            '$question',
            style: TextStyle(fontSize: 25.0, color: neutral),
          ),
        ),
      ],
    );
  }
}
