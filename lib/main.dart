import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/result.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color22?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 0},
        {'text': 'Yellow', 'score': 0},
        {'text': 'Mint', 'score': 0},
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Zebra', 'score': 0},
        {'text': 'Tiger', 'score': 0},
        {'text': 'Rabbit', 'score': 0},
        {'text': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': 'what\'s your favorite language?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'C++', 'score': 0},
        {'text': 'Dart', 'score': 10},
        {'text': 'Python', 'score': 0},
      ],
    }
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

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

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _resetQuiz)));
  }
}
