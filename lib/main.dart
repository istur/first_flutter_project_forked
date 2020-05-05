import 'package:first_project/answer.dart';
import 'package:first_project/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('My First App'),
//       ),
//       body: Text('The content of my app'),
//     ));
//   }
// }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color',
        'answers': ['Black', 'Red', 'White', 'Green'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Tiger', 'Turtle', 'Dog', 'Cat'],
      },
      {
        'questionText': 'What\'s your favorite shoes',
        'answers': ['Nike', 'Vans', 'Adidas', 'Rebook'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App Modifed'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
