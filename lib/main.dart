import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'who is Tunisia\'s president ?',
    'who is America\'s president ?',
    'was Hitler a good person ?'
  ];

  var questionIdx = 0;
  void onAnswerSelected() {
    if (questionIdx < questions.length - 1) {
      setState(() {
        questionIdx++;
      });
    } else
      setState(() => questionIdx = 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Navigation bar'),
      ),
      body: Column(
        children: [
          Text(questions[questionIdx]),
          ElevatedButton(
            child: Text('First Answer'),
            onPressed: onAnswerSelected,
          ),
          ElevatedButton(
            onPressed: onAnswerSelected,
            child: Text('Second Answer'),
          ),
          ElevatedButton(
            onPressed: onAnswerSelected,
            child: Text('Third Answer'),
          )
        ],
      ),
    ));
  }
}
