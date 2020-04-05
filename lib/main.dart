import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  final _questions = const [
    {
      'pytanie': 'Jaki jest Twoj ulubiony kolor?',
      'odowiedzi': [
        {'odpowiedz': 'rózowy', 'punkty': 10},
        {'odpowiedz': 'fioletowy', 'punkty': 5},
        {'odpowiedz': 'indygo', 'punkty': 3},
        {'odpowiedz': 'zielony', 'punkty': 1}
      ]
    },
    {
      'pytanie': 'Jaki jest Twoj ulubiony film?',
      'odowiedzi': [
        {'odpowiedz': 'Poprawni politycznie w czerni', 'punkty': 10},
        {'odpowiedz': 'Niedolot Rajan', 'punkty': 1},
        {'odpowiedz': 'Sztar Łars', 'punkty': 3},
        {'odpowiedz': 'Hobbit', 'punkty': 5}
      ]
    },
    {
      'pytanie': 'W jakim kraju jest najwiecej senior developerUF?',
      'odowiedzi': [
        {'odpowiedz': 'Martynika', 'punkty': 10},
        {'odpowiedz': 'Rumunia', 'punkty': 5},
        {'odpowiedz': 'Włochy', 'punkty': 3},
        {'odpowiedz': 'Meksysk', 'punkty': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetApp() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() => _questionIndex = _questionIndex + 1);
    _totalScore += score;
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
                questions: _questions,
              )
            : Result(_totalScore, _resetApp),
      ),
    );
  }
}
