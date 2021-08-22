import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You are Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You alright?';
    } else {
      resultText = "Weclome to Slythern House you bad mamma jamma!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Personality Quiz'),
            style: TextButton.styleFrom(
              primary: Colors.blueAccent,
            ),
          )
        ],
      ),
    );
  }
}
