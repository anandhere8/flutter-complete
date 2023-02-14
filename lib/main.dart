import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionNumber = 0;
  int score = 0;

  void updateScore(int tmp) {
    score += tmp;
  }

  void answerQuestion() {
    setState(() {
      questionNumber++;
    });
    print('Question No. ${questionNumber}\n');
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': "What's your fav color ?",
        'answer': [
          {'text': 'Black', 'score': 10},
          {'text': 'Blue', 'score': 5},
          {'text': 'Brown', 'score': 1}
        ],
      },
      {
        'questionText': "What's your number ?",
        'answer': [
          {'text': '1', 'score': 1},
          {'text': '2', 'score': 2},
          {'text': '4', 'score': 4}
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: questionNumber < questions.length
            ? Quiz(
                questions,
                answerQuestion,
                questionNumber,
              )
            : Result(score),
      ),
    );
  }
}
