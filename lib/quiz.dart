import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function selectHandler;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(this.selectHandler, this.questions, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => selectHandler(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
