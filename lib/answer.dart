import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(answer),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 240, 167, 31),
        ),
      ),
    );
  }
}
