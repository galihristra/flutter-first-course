import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // ? Accessing the key-value object
      Question(
        questions[questionIndex]['questionText'],
      ),
      // ? map looping from an object
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(() => answerQuestion(answer), answer);
      }).toList()
    ]);
  }
}
