import 'package:flutter/material.dart';
import 'package:overview/overview_widget/overview_widget.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: OverviewWidget(),
    );
  }
}