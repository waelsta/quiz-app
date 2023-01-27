import 'package:flutter/material.dart';

import './answer.dart';

class Question extends StatelessWidget {
  final String questionText;
  final List<String> answers;
  const Question(this.questionText, this.answers);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            questionText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          margin: EdgeInsets.all(10),
          width: double.infinity,
        ),
        ...answers.map((answer) => Answer(answer)),
      ],
    );
  }
}
