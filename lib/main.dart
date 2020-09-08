import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
           color: Colors.blue,
           child: TestWidget(),
           height: 500.0,
           width: 500.0,
        )
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello!',
      style: TextStyle(
        fontSize: 50,
        color: Color(0xff00bfa5),   // Colors
        fontWeight: FontWeight.w800
      ),
    );
  }
}