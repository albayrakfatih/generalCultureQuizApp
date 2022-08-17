import 'package:flutter/material.dart';
import 'package:general_culture_quiz_app/constants.dart';
import 'package:general_culture_quiz_app/screens/aboutApp.dart';
import 'package:general_culture_quiz_app/screens/admin.dart';
import 'package:general_culture_quiz_app/screens/test_list_page.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.orange.shade400),
            accountName: Text(
              "Genel Kültür Bilgi Yarışması",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            accountEmail: Text(""),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                    leading: Icon(Icons.contact_page),
                    title: Text("ANASAYFA"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TestListPage()));
                    }),
                ListTile(
                    leading: Icon(Icons.contact_page),
                    title: Text("İLETİŞİM"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Admin()));
                    }),
                ListTile(
                    leading: Icon(Icons.info),
                    title: Text("UYGULAMA HAKKINDA"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AboutApp()));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
