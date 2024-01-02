import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview5(),));
}
class Gridview5 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview_count"),),
      body: GridView.count(crossAxisCount: 4, children: List.generate(20, (index) => Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/frts.jpg"),
              fit: BoxFit.fill),),
      )),

      ),

    );
  }
}