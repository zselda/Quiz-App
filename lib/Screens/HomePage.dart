import 'QuizPage.dart';
import 'package:flutter/material.dart';
import 'package:selda_quiz_app/Service/QuizManager.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}
_onPressed1 (int cat_id){
  category_ID = cat_id;
}
_onPressed2 (String diff){
  difficult = diff;
}

 int category_ID;
 String difficult;

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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Kategori Seçiniz:',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
            RaisedButton(
            onPressed: ()  {
              {
                gotoQuizPage(context); }
                _onPressed1(18);
            },
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
              child: Text('Computer Science',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white
                ),
              ),
            ),
          ),
            SizedBox (
              height: 10,
            ),
            RaisedButton(
              onPressed: ()  {
                {
                  gotoQuizPage(context); }
                _onPressed1(19);
              },
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
                child: Text('Mathematics',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          SizedBox (
            height: 10,
          ),
            RaisedButton(
              onPressed: ()  {
                {
                  gotoQuizPage(context); }
                _onPressed1(17);
              },
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
                child: Text('Science & Nature',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          SizedBox (
            height: 30,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Zorluk Derecesi Seçiniz:',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                ),
              ),
            ),
          ),
          SizedBox (
            height: 10,
          ),
          RaisedButton(
            onPressed: ()  {
              {
                gotoQuizPage(context); }
              _onPressed2('easy');
            },
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
              child: Text('Kolay',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox (
            height: 10,
          ),
          RaisedButton(
            onPressed: ()  {
              {
                gotoQuizPage(context); }
              _onPressed2('medium');
            },
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
              child: Text('Orta',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox (
            height: 10,
          ),
          RaisedButton(
            onPressed: ()  {
              {
                gotoQuizPage(context); }
              _onPressed2('hard');
            },
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
              child: Text('Zor',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
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
