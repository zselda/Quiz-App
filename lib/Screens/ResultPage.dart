import 'package:flutter/material.dart';
import 'package:selda_quiz_app/Service/QuizManager.dart';

class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();

}




class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(' Sonuç ',style: TextStyle (color: Colors.deepPurple),), backgroundColor: Colors.deepPurple[100]
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(radius:50.0,
            child: Image.asset(
              'assets/result.png',
              width: 600,
              height: 600,
              color: Colors.black,
            ),
          ),
          Divider(
            thickness: 3.00,
            indent: 20.0,
            endIndent: 20.0,
            height: 40.0,
            color: Colors.deepPurple,
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            'Test bitti, puanınız:',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.deepPurple),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '${widget.score}',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.deepPurple),
          ),
          Divider(
            thickness: 2.00,
            indent: 100.0,
            endIndent: 100.0,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
