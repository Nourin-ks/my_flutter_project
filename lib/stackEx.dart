import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StackEx(),));
}
class StackEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Stack(
        children: [
          Container(
            height: 350,
            width: 350,
            color: Colors.red,),

          Positioned(top: 100,
            left: 50,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.green,),
          ),

          Positioned(top: 10,
            right: 10,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,),
          ),
        ],
      ),
    );
  }
}
