import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final int score;
  Result(this.score);
  Widget build(BuildContext context) {
    return Center(
      child: Text('Your score is ${score}'),
    );
  }
}
