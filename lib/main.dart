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
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 50,top: 20,left: 20,right: 30),
          padding: EdgeInsets.only(left: 50),
          color: Colors.pink,
          height: 200.0,
          width: 200.0,
          child: Container(
            color: Colors.grey,
          ),
        ),
        Container(
          alignment: Alignment(-0.5,1),
          color: Colors.green,
          height: 200.0,
          width: 200.0,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 50
            ),
            ),
        ),
        Expanded(
          child: Container(
            color: Colors.lime,
          )
        ),
        Expanded(
          child: Container(
            color: Colors.pink,
          )
        )
      ],
    );
  }
}