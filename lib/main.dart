import 'package:flutter/material.dart';
import './constants.dart';
import './screens/home_page.dart';
import 'models/db_connect.dart';

void main(List<String> args) {
  var db = DBconnect("quiz1");
  db.fetchQuestions();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: colorofMain),
      home: HomePage(),
      
    );
  }
}
