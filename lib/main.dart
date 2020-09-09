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
  String message = "ยังไม่กด";
  List<Color> color = [Colors.red,Colors.amber];
  int countColors = 0;
  _ontapup(){
    setState(() {
      message = "ปล่อยแล้ว";
      countColors = 0;
    });
  }
  _ontapdown(){
    setState(() {
      message = "กดแล้ว";
      countColors = 1;
    });
  }

  TextEditingController messagefrom;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    messagefrom = TextEditingController();
  }
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }
  String _messages = "dfdf"; 
  _onsubmitt(){
    setState(() {
      _messages = messagefrom.text;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hello $message",
          style: TextStyle(
            fontSize: 50.0
          ),
        ),
        GestureDetector(

          onTapDown: (e) =>{
            _ontapdown()
          },
          onTapUp: (e)=>{
            _ontapup()
          },
          child: Container(
            width: 200,
            height: 100,
            color: color[countColors],
          ),
        ),
        Container(
          width: 300.0,
          child: TextFormField(            
            controller: messagefrom,  
            decoration: InputDecoration(
              hintText: "ลองพิมพ์ดู",
              hintStyle: TextStyle(
                color: Colors.green,
                fontSize: 30.0
              ),
              border: InputBorder.none,
              icon: Icon(
                Icons.message,
                size: 50.0,
                ),
                fillColor: Colors.deepPurple,
                filled: true,                
            ),        
            
          ),
        ),
        RaisedButton(
          onPressed: (){
            _onsubmitt();
            messagefrom.clear();
        }),
        Text(
          "message $_messages",
          style: TextStyle(
            fontSize: 50
          ),
        )
      ],
    );   
  }


}