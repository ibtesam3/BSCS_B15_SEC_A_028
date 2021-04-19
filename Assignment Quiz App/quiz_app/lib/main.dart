import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: CircleAvatar(
          child: Image(
            image: AssetImage('image/i.jpg'),
          ),
        ),
      ),
    ),
  );
}
