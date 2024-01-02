import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview3(),));
}
class Gridview3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Gridview- Builder_maxCrossAxis_extent"),),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
          itemBuilder: (context, index)=>Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/splsh.jpg"),
                    fit: BoxFit.fill),
              )
          )),
    );
  }
}