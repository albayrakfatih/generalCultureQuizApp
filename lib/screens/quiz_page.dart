import 'dart:async';
import 'package:flutter/material.dart';
import 'package:general_culture_quiz_app/models/question_model.dart';
import 'package:general_culture_quiz_app/widgets/next_button.dart';
import 'package:general_culture_quiz_app/widgets/options_card.dart';
import '../constants.dart';
import '../models/question_model.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/result_screen.dart';
import '../models/db_connect.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  //create an object for Dbconnect
  var db = DBconnect("quiz1");

  late Future _questions;

  Future<List<Question>> getData() async {
    return db.fetchQuestions();
  }

  @override
  void initState() {
    _questions = getData();
    super.initState();
  }

//create an index to loop through _questions
  int index = 0;

//create a boolean value to check if the user has clicked.
  bool isPressed = false;

  //create a score
  int score = 0;

  bool isAlreadySelected = false;

//create a function to display the next question.
  void nextQuestion(int questionLength) {
    if (index == questionLength - 1 && isPressed == true) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => ResultScreen(
                resultScore: score,
                questionLength: questionLength * 5,
                onPressed: startOver,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++; //when the index will change to 1. rebuild the app.
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Lütfen soruyu cevaplayınız!',
              textAlign: TextAlign.center,
            ),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  //create a function for changing color
  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score += 5;
      }
    }
    setState(() {
      isPressed = true;
      isAlreadySelected = true;
    });
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    //use the FutureBuilder widget

    return FutureBuilder(
      future: _questions as Future<List<Question>>,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;
            return Scaffold(
              //change the background
              backgroundColor: quizBackground,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: quizBackground,
                shadowColor: Colors.transparent,
                //title: const Text("Quiz App"),
              ),

              body: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
                child: Column(
                  children: [
                    Container(
                      child: Text('Skor: $score',
                          style:
                              const TextStyle(fontSize: 22.0, color: neutral)),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 125,
                      endIndent: 125,
                      color: Colors.grey.shade400,
                    ),
                    QuestionWidget(
                      question: extractedData[index].title,
                      indexAction: index,
                      totalQuestions: extractedData.length,
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 1.3,
                    ),
                    const SizedBox(height: 25.0),
                    for (int i = 0;
                        i < extractedData[index].options.length;
                        i++)
                      GestureDetector(
                        onTap: () => checkAnswerAndUpdate(
                            extractedData[index].options.values.toList()[i]),
                        child: OptionCard(
                          option: extractedData[index].options.keys.toList()[i],
                          color: isPressed
                              ? extractedData[index]
                                          .options
                                          .values
                                          .toList()[i] ==
                                      true
                                  ? correct
                                  : incorrect
                              : neutral,
                        ),
                      ),
                  ],
                ),
              ),

              floatingActionButton: GestureDetector(
                onTap: () => nextQuestion(extractedData.length),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: NextButton(),
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const Center(
          child: Text('Veri Yok'),
        );
      },
    );
  }
}
