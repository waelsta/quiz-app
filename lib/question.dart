import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText);

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
      ],
    );
  }
}
