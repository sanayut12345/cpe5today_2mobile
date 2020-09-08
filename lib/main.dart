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
           height: 800.0,
           width: 500.0,
        )
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 300.0,
          width: 300.0,
          color: Colors.green,
        ),
        Container(
          height: 200.0,
          width: 200.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.pink,
        ),
        Container(
          height: 50.0,
          width: 50.0,
          color: Colors.black,
        ),
        Container(
          height: 25.0,
          width: 25.0,
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}