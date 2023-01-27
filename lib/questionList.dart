import 'package:flutter/widgets.dart';

import './answer.dart';
import './question.dart';

class QuestionList extends StatefulWidget {
  const QuestionList();

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  int _questionIdx = 0;
  var questions = [
    {
      'questionText': 'who is Tunisia President',
      'answers': ['Kais Saied', 'El Sebsi', 'El Marzouki', 'Joe Biden']
    },
    {
      'quesitonText': 'who is Wael Sta',
      'answers': ['software developer', 'some random dude']
    },
    {
      'questionText': 'what is javascript',
      'answers': [
        'a front end language',
        'a scripting language',
        'i dont know'
      ],
    }
  ];

  void onAnswerSelected() {
    if (_questionIdx < questions.length - 1) {
      setState(() {
        _questionIdx++;
      });
    } else {
      setState(() {
        _questionIdx = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_questionIdx]['questionText'],
            questions[_questionIdx]['answers'])
      ],
    );
  }
}
