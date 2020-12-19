import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 1},
          {'text': 'Red', 'score': 2},
          {'text': 'Green', 'score': 3},
          {'text': 'Blue', 'score': 4}
        ]
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          {'text': 'Tiger', 'score': 4},
          {'text': 'Lion', 'score': 3},
          {'text': 'Cow', 'score': 2},
          {'text': 'Bear', 'score': 1}
        ]
      },
      {
        'questionText': 'Where did you study engineering?',
        'answers': [
          {'text': 'IITK', 'score': 1},
          {'text': 'IITA', 'score': 4},
          {'text': 'HBTI', 'score': 2},
          {'text': 'IIMA', 'score': 3}
        ]
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first app'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(_answerQuestion, _questions, _questionIndex)
                : Result(_totalScore, _restartQuiz)));
  }
}
