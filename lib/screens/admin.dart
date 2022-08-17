import 'package:flutter/material.dart';

import 'drawerMenu.dart';

class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        title: Text("İLETİŞİM"),
        centerTitle: true,
      ),
      drawer: DrawerMenu(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Muhammed Fatih ALBAYRAK"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.message),
              title: Text(
                  "https://www.linkedin.com/in/muhammed-fatih-albayrak-800bb519a/"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.mail),
              title: Text("albayraklarfatih@gmail.com"),
            ),
          ),
        ],
      ),
    );
  }
}
