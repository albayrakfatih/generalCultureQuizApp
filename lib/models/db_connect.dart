import "package:http/http.dart" as http;
import './question_model.dart';
import 'dart:convert';
import 'dart:async';

class DBconnect {
  String url = "";
  DBconnect(String quizName) {
    url =
        'https://quizapp-2284c-default-rtdb.europe-west1.firebasedatabase.app/questions/' +
            quizName +
            '.json';
  }
  Future<void> addQuestion(Question question) async {
    http.post(Uri.parse(url),
        body: json.encode({
          'title': question.title,
          'options': question.options,
        }));
  }

//I fetched the data from database
  Future<List<Question>> fetchQuestions() async {
    //I got the data from just using this.
    return http.get(Uri.parse(url)).then((response) {
      //the 'then' method returns a 'response' which is data.
      //to whats inside I have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}
