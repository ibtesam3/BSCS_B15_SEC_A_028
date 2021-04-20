import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/Home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[900],
      ),
      home: HomeScreen(),
    );
  }
}
