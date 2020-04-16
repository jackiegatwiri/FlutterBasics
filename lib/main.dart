import 'package:flutter/material.dart';
//Every widget is a class in flutter
//runApp tells flutter to draw something on the screen

void main() => runApp(MyApp());

//statelesswidget - base class that makes you create your own widgets
//MyApp can be used as a widget by flutter
class MyApp extends StatelessWidget {
void answerQuestion(){
  print('asnwer chosen');
}

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
        body: Column(
          children: <Widget>[
            Text('The question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
