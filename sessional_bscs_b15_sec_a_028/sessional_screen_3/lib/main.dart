import 'package:flutter/material.dart';
import 'package:shop/list_widget/list_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListWidget(),
    );
  }
}
