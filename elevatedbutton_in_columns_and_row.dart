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
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Container(
            color: Colors.blue,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Bt('Red', Icons.settings, Colors.red),
                        Bt('Yellow', Icons.calendar_today, Colors.yellow)
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Bt('Green', Icons.add_circle, Colors.green),
                        Bt('Purple', Icons.android, Colors.purple)
                      ]),
                ])));
  }
}

class Bt extends StatelessWidget {
  String title;
  IconData icon;
  Color color;

  Bt(this.title, this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(title),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        onPrimary: Colors.black,
        onSurface: Colors.white,
        elevation: 5,
        side: BorderSide(color: Colors.white, width: 1),
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        textStyle: TextStyle(
            color: Colors.black, fontSize: 40, fontStyle: FontStyle.italic),
      ),
    );
  }
}
