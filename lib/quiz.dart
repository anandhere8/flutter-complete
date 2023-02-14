import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionNumber;
  final VoidCallback answerQuestion;

  Quiz(this.questions, this.answerQuestion, this.questionNumber);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionNumber]['questionText'].toString(),
      ),
      ...(questions[questionNumber]['answer'] as List<Map>).map((e) {
        return Answer(answerQuestion, e['text']);
      }).toList(),
    ]);
  }
}
