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
    return Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcREcqspi5XGwdEJQttgGmlAxVMb8sazls8vFQ&usqp=CAU",
      );
  }
}