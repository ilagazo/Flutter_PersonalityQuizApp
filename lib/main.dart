import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What/s your favorite color?',
      'What/s your favorite animal?,'
    ];

    void answerQuestion() {
      print('Answer Question');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(0)),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen')),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  //... Number of arguments
                  print('Answer 3 chosen');
                }),
          ],
        ),
      ),
    );
  }
}
