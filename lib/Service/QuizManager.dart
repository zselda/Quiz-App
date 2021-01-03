
import 'dart:io';
import 'package:html_unescape/html_unescape.dart';
import 'Question.dart';
import 'Option.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as converter;
import 'dart:async';

class QuizManager {
  QuizManager() {
  //
  }

  Future<void> LoadQuestions(int numberOfQuestions, int category_ID, String difficult) async {
    var url =
        'https://opentdb.com/api.php?amount=$numberOfQuestions&category=$category_ID&difficulty=$difficult&type=multiple';
    var response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      //print(response.body);
      Map<String, dynamic> json = converter.jsonDecode(response.body);
      for (int i = 0; i < json['results'].length; i++) {
        var questionJson = json['results'][i];
        print(questionJson['question']);
        print(questionJson['correct_answer']);
        print(questionJson['incorrect_answers']);
        List<Option> options = [];
        options.add(Option(questionJson['correct_answer'], 10));
        for (int j = 0; j < questionJson['incorrect_answers'].length; j++) {
          options.add(Option(questionJson['incorrect_answers'][j], 0));
        }
        Question question = Question(questionJson['question'], options);
        _questions.add(question);
      }

      _questions.shuffle();
      for (var question in _questions) {
        question.options.shuffle();
      }
    }
  }


  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
    /* if(currentQuestionId >= _questions.length -1) {
      return true;
    } else {
      return false;
    }
    */
  }

 /* void getWinner(score){
    if(score >= 20){
      print("Tebrikler Kazandınız!") ;
    }
    else{
      print("Tekrar Deneyin.") ;
    }
  }

  */

  Question getCurrentQuestion() {
    print('getCurrentQuestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}