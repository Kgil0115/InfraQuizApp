import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    print('Answer!');
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
