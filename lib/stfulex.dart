import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StfulEx(),));
}
class StfulEx extends StatefulWidget {


  @override
  State<StfulEx> createState() => _StfulExState();
}

class _StfulExState extends State<StfulEx> {

  var bg=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(
        Icons.lightbulb,
        color: Colors.black,),
      onPressed: (){}
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            setState(() {
              bg=Colors.red;
            });
          }, child: Text("red")),

          ElevatedButton(onPressed: (){
            setState(() {
              bg=Colors.blue;
            });
          }, child: Text("blue")),

          ElevatedButton(onPressed: (){
            setState(() {
              bg=Colors.green;
            });
          }, child: Text("green")),
        ],),
      ),
    );
  }
}
