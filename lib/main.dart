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
    return ListView(
      children: [
        Container(
          height: 200.0,
          color: Colors.lightBlue,
        ),
        Container(
          height: 200.0,
          color: Colors.indigo,
        ),
        Container(
          height: 200.0,
          color: Colors.grey,
        ),
        Container(
          height: 200.0,
          color: Colors.green,
        ),
        Container(
          height: 200.0,
          color: Colors.brown,
        ),
        Container(
          height: 200.0,
          color: Colors.blueGrey,
        ),
        Container(
          height: 200.0,
          color: Colors.yellow,
        ),
        Container(
          height: 200.0,
          color: Colors.black,
        ), 
      ],
    );
  }
}