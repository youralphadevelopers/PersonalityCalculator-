import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questiontext': 'which defines you Accurately ?',
      'answers': [
        {'text': 'Joyfull', 'score': 3},
        {'text': 'Helpfull', 'score': 4},
        {'text': 'Forgiving', 'score': 5},
        {'text': 'Self Respecting', 'score': 3},
      ],
    },
    {
      'questiontext': 'Pick your perfect home',
      'answers': [
        {'text': 'Mansion', 'score': 2},
        {'text': 'Cabin in a island', 'score': 5},
        {'text': 'Tree house', 'score': 4},
        {'text': 'farmhouse', 'score': 3},
      ],
    },
    {
      'questiontext': 'Which kind of animal are you most like?',
      'answers': [
        {'text': 'Horse', 'score': 5},
        {'text': 'Tiger', 'score': 4},
        {'text': 'Sloth', 'score': 2},
        {'text': 'Fox', 'score': 3},
      ],
    },
    {
      'questiontext': 'What kind of friend are you? ',
      'answers': [
        {'text': 'Makes everyone laugh', 'score': 3},
        {'text': 'Quite and Secret holder', 'score': 1},
        {'text': 'Leads the Coversation', 'score': 5},
        {'text': 'Putting others first', 'score': 2},
      ],
    },
    {
      'questiontext': 'What is your Dominant feeling?',
      'answers': [
        {'text': 'Care', 'score': 2},
        {'text': 'Optimism', 'score': 1},
        {'text': 'Confidence', 'score': 5},
        {'text': 'Freedom', 'score': 3},
      ],
    },
    {
      'questiontext': 'Which talent do you really wish you had? ',
      'answers': [
        {'text': 'Drawing', 'score': 1},
        {'text': 'Singing', 'score': 2},
        {'text': 'Dancing', 'score': 3},
        {'text': 'Playing and instrument', 'score': 5},
      ],
    },
    {
      'questiontext': 'What is your Dominant feeling?',
      'answers': [
        {'text': 'Care', 'score': 2},
        {'text': 'Optimism', 'score': 1},
        {'text': 'Confidence', 'score': 4},
        {'text': 'Freedom', 'score': 3},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz()
  {
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
    if (_questionIndex < questions.length) {
      print("More Questions yet to come!");
    } else {
      print("No More Questions !");
    }
  }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Calculator'),
          backgroundColor: Colors.orange,
          shadowColor: Colors.orange,
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore, _resetQuiz,)
      ),
    );
  }
}
