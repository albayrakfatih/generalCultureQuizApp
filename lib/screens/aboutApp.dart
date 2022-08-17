import 'package:flutter/material.dart';
import 'package:general_culture_quiz_app/screens/drawerMenu.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        title: Text("UYGULAMA HAKKINDA"),
        centerTitle: true,
      ),
      drawer: DrawerMenu(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text("Bu uygulama Flutter ile geliştirilmiştir."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text(
                  "Sorular gerçek zamanlı veri tabanından (Firebase) çekilmektedir."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text("Uygulamada 10 adet quiz mevcuttur."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text("Her quizde 20 adet soru bulunmaktadır."),
            ),
          ),
        ],
      ),
    );
  }
}
