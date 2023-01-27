import 'package:flutter/widgets.dart';

import './question.dart';
import './answer.dart';

class QuestionList extends StatefulWidget {
  const QuestionList();

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  int _questionIdx = 0;
  Map<String, List<String>> questions = {
    'who is Tunisia President': [
      'Kais Saied',
      'El Sebsi',
      'El Marzouki',
      'Joe Biden'
    ],
    'who is Wael Sta': [
      'software developer',
      'some random dude',
      'dslkj',
      'sldkjf'
    ],
    'what is javascript': [
      'a front end language',
      'a scripting language',
      'i dont know'
    ],
  };
  void _onAnswerSelected() {
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
        Question(questions.keys.elementAt(_questionIdx)),
        ...questions.values
            .elementAt(_questionIdx)
            .map((e) => Answer(e, _onAnswerSelected)),
      ],
    );
  }
}
