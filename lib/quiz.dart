import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final VoidCallback clickHandler;

  const Quiz(this.questions, this.index, this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Question(questions[index]['text'] as String),
            ...(questions[index]['answers'] as List<String>).map((answer) {
              return Answer(clickHandler, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
