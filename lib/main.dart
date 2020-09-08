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
  int count = 0;

  List<Color> color = [Colors.red,Colors.amber,Colors.pink,Colors.purple,Colors.teal,Colors.white];
  int countColors = 0;
  onchangColors(){
    if (countColors > 4){
      setState(() {          
        countColors = 0;
        });
      }
      else{
        setState(() {
          countColors = countColors+1;
          
        });
      }
    }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hello count $count",
          style: TextStyle(
            fontSize: 50.0
          ),
        ),
        RaisedButton(
          onPressed: (){
            setState(() {
              count = count+1;
            });

          }
        ),
        FlatButton(
          onPressed: (){
            onchangColors();
          }, 
          child: Container(
            height: 100,
            width: 200,
            color: color[countColors],
          )
        )
      ],
    );
  }

  

}