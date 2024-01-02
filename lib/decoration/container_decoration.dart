////single child

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ContainerDec(),));
}

class ContainerDec extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Decoration"),
      ),
      body: Container(
        //width: double.infinity,
        width: 500,
        height: 500,
        decoration: BoxDecoration
          (image: DecorationImage
          (image: AssetImage("assets/images/logo.jpg"),
            fit: BoxFit.fill)),
        // color: Colors.amber,
        child: Icon(Icons.favorite, size: 60,color: Colors.white,),
      ),
    );
  }

}