import 'QuizPage.dart';
import 'QuizPage2.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}

void gotoQuizPage2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage2()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz', style: TextStyle (color: Colors.deepPurple),), backgroundColor: Colors.deepPurple[100] ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Merhaba, Sınava Hoşgeldiniz.',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          RaisedButton(
            onPressed: () {
              gotoQuizPage(context); },
            padding: const EdgeInsets.all(0.0),
            child : Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF7E57C2),
                    Color(0xFF9575CD),
                    Color(0xFFB39FFB),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(15.0),
              child: Text('Quiz 1',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox (
            height: 40,
          ),
          RaisedButton(
            onPressed: () {
              gotoQuizPage2(context); },
            padding: const EdgeInsets.all(0.0),
            child : Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF7E57C2),
                    Color(0xFF9575CD),
                    Color(0xFFB39FFB),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(15.0),
              child: Text('Quiz 2',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
