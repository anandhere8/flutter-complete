import 'package:flutter/material.dart';

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
    var questions = [
      "What's your name ?",
      "What's your age  ?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(children: [
          Text(questions[questionNumber]),
          ElevatedButton(
            child: Text('Answer'),
            onPressed: answerQuestion,
          ),
        ]),
      ),
    );
  }
}
