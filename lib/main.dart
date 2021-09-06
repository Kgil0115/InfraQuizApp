import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answer': ['Black', 'Blue', 'White', 'Yellow'],
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answer': ['Zebra', 'Cat', 'Dog', 'Snake'],
      },
      {
        'questionText': 'what\'s your favorite language?',
        'answer': ['Python', 'C++', 'Java', 'Dart'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText'] as String),
          //callback 함수로써, Answer버튼 누르면 _answerQuestion을 호출
          //questions.map((question) => null)
        ],
      ),
    ));
  }
}
