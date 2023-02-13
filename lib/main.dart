import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int countOfPressed = 0;

  void answerQuestion() {
    countOfPressed++;
    print('No of times the button pressed ${countOfPressed}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(children: [
          Text('No of times the button pressed ${countOfPressed}'),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}
