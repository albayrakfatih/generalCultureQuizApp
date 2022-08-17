import 'package:flutter/material.dart';
import 'package:general_culture_quiz_app/screens/test_list_page.dart';
import '../constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.resultScore,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);

  final int resultScore;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    var size2 = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: Colors.orange.shade500,
      content: Padding(
        padding: const EdgeInsets.all(55),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SKOR',
              style: TextStyle(color: neutral, fontSize: 35),
            ),
            const SizedBox(height: 10),
            CircleAvatar(
              child: Text(
                '$resultScore/$questionLength',
                style: TextStyle(fontSize: 32),
              ),
              radius: 70,
              backgroundColor: resultScore >= 85
                  ? correct
                  : resultScore >= 50 && resultScore < 85
                      ? Colors.yellow
                      : resultScore < 50
                          ? incorrect
                          : Colors.blue,
            ),
            const SizedBox(height: 20),
            Text(
              resultScore < 85 && resultScore > 45
                  ? 'Neredeyse'
                  : resultScore < 50
                      ? 'Tekrar Dene '
                      : 'Mükemmel!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: onPressed,
              child: Container(
                alignment: Alignment.center,
                height: size2.height * 0.05,
                width: size2.width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Yeniden Oyna',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.deepOrangeAccent,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TestListPage(),
                ));
              },
              child: Container(
                alignment: Alignment.center,
                height: size2.height * 0.05,
                // width: size2.width * 0.5,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Ana sayfa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.deepOrangeAccent,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
