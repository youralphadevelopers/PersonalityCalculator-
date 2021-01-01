import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    this.questions,
    this.answerQuestion,
    this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questiontext'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answers) {
          return Answer(()=>answerQuestion(answers['score']), answers['text']);
        }).toList()
      ],
    );
  }
}
