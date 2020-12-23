import 'package:flutter/material.dart';
import 'package:selda_quiz_app/Service/QuizManager.dart';


class QuizPage2 extends StatefulWidget {
  @override
  _QuizPageState2 createState() => _QuizPageState2();
}

class _QuizPageState2 extends State<QuizPage2> {
  QuizManager _manager2 = QuizManager();


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text(
            'Questions ? of ?', style: TextStyle (color: Colors.deepPurple)),
        backgroundColor: Colors.deepPurple[100]
      ),
    );
  }
}