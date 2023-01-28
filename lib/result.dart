import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;

  const Result({@required this.score, @required this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 220),
        child: Column(
          children: [
            Center(
                child: Text(
              'Your final score is $score/28',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            )),
            ElevatedButton(onPressed: resetQuiz, child: Text('Start Over'))
          ],
        ));
  }
}
