import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  void answerQuestion() {
    setState(() {
      questionNumber++;
      questionNumber %= 2;
    });
    print('Question No. ${questionNumber}\n');
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': "What's your fav color ?",
        'answer': ['Black', 'Blue', 'Brown'],
      },
      {
        'questionText': "What's your number ?",
        'answer': ['1', '2', '4'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(children: [
          Question(
            questions[questionNumber]['questionText'].toString(),
          ),
          ...(questions[questionNumber]['answer'] as List<String>).map((e) {
            return Answer(answerQuestion, e);
          }).toList(),
        ]),
      ),
    );
  }
}
