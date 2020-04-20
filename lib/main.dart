import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
//Every widget is a class in flutter
//runApp tells flutter to draw something on the screen

void main() => runApp(MyApp());

//statelesswidget - base class that makes you create your own widgets
//MyApp can be used as a widget by flutter
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite colour?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Lion', 'Elephant', 'Dog'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Maxe', 'Maxes', 'Maxine'],
    },
  ];

  void _answerQuestion() {
    //setState is a function that forces flutter to rerender the ui
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
      print('we have more questions!');
    }
  }

  //build is what flutter calls to render the ui

  @override
  Widget build(BuildContext context) {
    //MaterialApp is a widget that provides base set-up
    //to turn a combination of widgets to an app
    //scaffold creates a base page design for my app
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
