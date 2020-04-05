import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultText {
    String resultMemo;
    if (resultScore <= 8) {
      resultMemo = 'Kłis dan a Ty jesteś SPOKO';
    } else if (resultScore <= 12) {
      resultMemo = 'Kłis dan a Ty jesteś W MIARE';
    } else if (resultScore <= 16) {
      resultMemo = 'Kłis dan a Ty jesteś DZIWNY';
    } else if (resultScore <= 20) {
      resultMemo = 'Kłis dan a Ty jesteś TENTEGO';
    } else {
      resultMemo = 'Kłis dan a Ty jesteś EE';
    }
    return resultMemo;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Reset'),
            textColor: Colors.red,
          )
        ],
      ),
    );
  }
}
