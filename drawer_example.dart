import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MainPage(),
  );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RSN',
        home: Scaffold(
            appBar: AppBar(title: Text('Test')),
            /*
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.more_vert),
                )),
          ],*/
            drawer: Drawer(
                child: Column(
                    // Important: Remove any padding from the ListView.
                    //padding: EdgeInsets.zero,
                    children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Jhon Smith"),
                    accountEmail: Text("jhonsmith@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 40.0),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () {
                      // Update the state of the app.
                      Navigator.pop(context);
                    },
                  ),
                ]))));
  }
}
