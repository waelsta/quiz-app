import 'package:flutter/widgets.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

class QuestionList extends StatefulWidget {
  const QuestionList();

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  int _questionIdx = 0;
  int _score = 0;
  final _questions = const [
    {
      'questionText': 'What is your favorite pet ?',
      'answers': [
        {'text': 'Hamster', 'score': 5},
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 7},
        {'text': 'Rabbit', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your favorite Anime ?',
      'answers': [
        {'text': 'HxH', 'score': 10},
        {'text': 'One Piece', 'score': 5},
        {'text': 'Naruto', 'score': 9},
      ],
    },
    {
      'questionText': 'What is your favorite Movie ?',
      'answers': [
        {'text': 'The Godfather', 'score': 6},
        {'text': 'American Psycho', 'score': 8},
        {'text': '***** **** 1999', 'score': 11},
      ],
    },
  ];

  void _onAnswerSelected(int score) {
    setState(() {
      _questionIdx++;
    });
    _score += score;
  }

  @override
  Widget build(BuildContext context) {
    return _questionIdx < _questions.length
        ? Column(
            children: [
              Question(_questions[_questionIdx]['questionText']),
              ...(_questions[_questionIdx]['answers']
                      as List<Map<String, Object>>)
                  .map((ans) => Answer(
                      ans['text'], () => _onAnswerSelected(ans['score'])))
                  .toList()
            ],
          )
        : Result(
            score: _score,
          );
  }
}
