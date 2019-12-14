import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// ? Main function goes here
// void main() {
//   runApp(MyApp());
// }

// ? Same as above, in a simple way
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Green', 'Blue']
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Cat', 'Dog', 'Rabbit', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite football club ?',
      'answers': ['Chelsea', 'Real Madrid', 'Barcelona', 'Liverpool']
    }
  ];

  var _questionIndex = 0;
  var answers = [];
  var showResult = false;

  void _answerQuestion(String answer) {
    // ? Similar to setState on react native
    setState(() {
      _questionIndex = _questionIndex + 1;
      answers.add(answer);
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      setState(() {
        showResult = true;
      });
    }

    print(answers);
  }

  @override
  Widget build(BuildContext context) {
    // ? This is equivalent to render method on react native
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        // ? Appbar is equivalent to Header
        title: Text('My First App'),
      ),
      body: Container(
          width: double.infinity,
          child: !showResult
              ? Quiz(
                  questionIndex: _questionIndex,
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                )
              : Result()),
    ));
  }
}
