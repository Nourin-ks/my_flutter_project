import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: Gridview6(),));
}
class Gridview6 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Gridview_extent"),),
      body: GridView.extent(maxCrossAxisExtent: 100,
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
        children: List.generate(10, (index) =>Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo.jpg"),
                  fit: BoxFit.fill)
          ),
        )),),
    );
  }
}