import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      statusBarIconBrightness: Brightness.dark, //top bar icons
      systemNavigationBarColor: Colors.white, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    )
  );
  runApp(MyApp());
}

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
        fontFamily: 'Montserrat',
        primaryColor: Color(0xffffe135),
        accentColor: Color(0xFFFFFFFF),
        canvasColor: Color(0xfff8f9fc),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          body1: TextStyle(fontSize: 12, color: Colors.white),
        ),
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
