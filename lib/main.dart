import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // throw UnimplementedError();
    return _MyAppState();
  }
}

// Leading Underscore is like "private". Sets the class to only be usable within the file
// Persistent
class _MyAppState extends State<MyApp> {
  final _questions = const [
    // Map
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Wolf', 'score': 8},
        {'text': 'Goose', 'score': 3},
        {'text': 'Lion', 'score': 2},
        {'text': 'Rabbit', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Steak', 'score': 5},
        {'text': 'Rice', 'score': 3},
        {'text': 'Mac & Cheese', 'score': 2},
        {'text': 'Chicken Soup', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More _questions exist!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        // If more _questions exist then do this
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            // Else display congratulations page
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
