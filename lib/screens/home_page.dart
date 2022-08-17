import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:general_culture_quiz_app/constants.dart';
import 'package:general_culture_quiz_app/screens/drawerMenu.dart';
import 'package:general_culture_quiz_app/screens/test_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      backgroundColor: background,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.amber,
              Colors.orange.shade900,
            ])),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Meydan Okurken",
                      style: TextStyle(
                        fontSize: size.width / 13,
                        fontFamily: 'Lobster',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Öğrenmeye",
                      style: TextStyle(
                        fontSize: size.width / 13,
                        fontFamily: "Lobster",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Var Mısın ?",
                style: TextStyle(
                  fontSize: size.width / 13,
                  fontFamily: "Lobster",
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: size.width * 0.25,
                height: size.height * 0.25,
                child: FloatingActionButton(
                  onPressed: () {
                    if (defaultTargetPlatform == TargetPlatform.android) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TestListPage(),
                      ));
                      //ios platform
                    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => TestListPage(),
                      ));
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TestListPage(),
                      ));
                    }
                  },
                  child: Icon(
                    Icons.play_arrow_rounded,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Öyleyse,",
                  style: TextStyle(
                    fontSize: size.width / 13,
                    fontFamily: "Lobster",
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Hadi Başlayalım..",
                style: TextStyle(
                  fontSize: size.width / 13,
                  fontFamily: "Lobster",
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
