import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'Bad';
    } else if (resultScore <= 20) {
      resultText = 'Good';
    } else if (resultScore <= 30) {
      resultText = 'Great';
    } else {
      resultText = 'Awesome!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              '다시 시작',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
