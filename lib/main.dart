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
          alignment: Alignment.center,
          color: Colors.blue,
          child: TestStateflull(),           
        )
      ),
    );
  }
}
class TestStateflull extends StatefulWidget {
  @override
  _TestStateflullState createState() => _TestStateflullState();
}

class _TestStateflullState extends State<TestStateflull> {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: (){

            }, 
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.lime[900],
                borderRadius: BorderRadius.all(Radius.circular(40.0))                
              ),
              child: Text(
                "Next Pages",
                style: TextStyle(
                  fontSize: 30.0
                ),
                ),
            ),
          ),
        ],
      ),
    );   
  }
}



class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Container(
        color: Colors.pink,
        child: Text(
          "Page 2 น่ะ",
          style: TextStyle(
            fontSize: 50.0
          ),
          ),
      ),
    );
  }
}