import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  const Answer(this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: Text(answerText),
      onPressed: () => print(answerText),
    ));
  }
}
