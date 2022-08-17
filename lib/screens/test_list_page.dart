import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:general_culture_quiz_app/screens/drawerMenu.dart';
import 'package:general_culture_quiz_app/screens/eight_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/fifth_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/fourth_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/ninth_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/quiz_page.dart';
import 'package:general_culture_quiz_app/screens/second_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/seventh_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/sixth_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/tenth_quiz_page.dart';
import 'package:general_culture_quiz_app/screens/third_quiz_page.dart';
import 'drawerMenu.dart';

class TestListPage extends StatefulWidget {
  const TestListPage({Key? key}) : super(key: key);

  @override
  _TestListPageState createState() => _TestListPageState();
}

class _TestListPageState extends State<TestListPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        centerTitle: true,
        title: Text(
          "Anasayfa",
          style: TextStyle(fontSize: 30),
        ),
      ),
      drawer: DrawerMenu(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.cyanAccent,
              Colors.blue.shade300,
              Colors.blue,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.all(9),
                  color: Colors.red.shade50,
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '"Hatırlamaya değer bir şeyler yap."',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Lobster",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Text(
                          "Elvis Presley",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              fontFamily: "Lobster",
                              color: Colors.indigo),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          if (defaultTargetPlatform == TargetPlatform.android) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuizPage(),
                            ));
                            //ios platform
                          } else if (defaultTargetPlatform ==
                              TargetPlatform.iOS) {
                            Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => QuizPage(),
                            ));
                          } else {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuizPage(),
                            ));
                          }
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    " Quiz 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          if (defaultTargetPlatform == TargetPlatform.android) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondQuizPage(),
                            ));
                            //ios platform
                          } else if (defaultTargetPlatform ==
                              TargetPlatform.iOS) {
                            Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => SecondQuizPage(),
                            ));
                          } else {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondQuizPage(),
                            ));
                          }
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 2",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ThirdQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 3",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FourthQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 4",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FifthQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SixthQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 6",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SeventhQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 7",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EightQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NinthQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 9",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TenthQuizPage(),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(9),
                          color: Colors.amber.shade100,
                          elevation: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.amber,
                                  Colors.orange.shade200,
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Quiz 10",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        fontFamily: "Lobster",
                                        color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
