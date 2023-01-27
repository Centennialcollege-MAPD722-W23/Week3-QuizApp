import 'package:flutter/material.dart';
import 'package:week2_demo/quiz.dart';
import 'package:week2_demo/result.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _index = 0;
  final _questions = [
    {
      'text': 'What is your fav city?',
      'answers': ['Toronto', 'Rome', 'Paris']
    },
    {
      'text': 'What is your fav color?',
      'answers': ['Red', 'Blue', 'Green', 'Black']
    },
    {
      'text': 'What is your fav Animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Snake']
    },
  ];

  void _onButtonCliced() {
    setState(() {
      // call build function
      _index += 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: _index < _questions.length
            ? Quiz(_questions, _index, _onButtonCliced)
            : const Result(),
      ),
    );
  }
}
