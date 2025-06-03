import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: loginscreen()));
class loginscreen extends StatefulWidget{
  loginscreenst createState() => loginscreenst();
}
class loginscreenst extends State<loginscreen>{
  int counter = 0;
  void increment(){
    setState(() {
      counter++;
    });
  }
  void decrement(){
    setState(() {
      counter--;
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          Text("counter value"),
          Text('$counter'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          ElevatedButton(onPressed: increment, child: Text("+")),
          ElevatedButton(onPressed: decrement, child: Text("-")),
            ],
          ),
        ],
      ),
      ),
    );
  }
}