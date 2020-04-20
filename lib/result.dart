import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);
  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = "Yoa are awesome";
    } else if (totalScore <= 12) {
      resultText = "Pretty Likeable";
    } else {
      resultText = "You are strange";
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz',
                style: TextStyle(fontStyle: FontStyle.italic)),
            color: Colors.black,
            textColor: Colors.white,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
