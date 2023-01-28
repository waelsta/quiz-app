import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result({@required this.score});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Your final score is $score/28',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
