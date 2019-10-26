import 'package:flutter/material.dart';

import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mowz',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xffffe135),
        accentColor: Color(0xFFFFFFFF),
        canvasColor: Color(0xffffe135),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 36, color: Theme.of(context).accentColor),
          title: TextStyle(fontSize: 24),
          body1: TextStyle(fontSize: 12),
        ),
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}