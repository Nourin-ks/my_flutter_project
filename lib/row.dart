import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Row1(),));
}


class Row1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Wrap(
            children: [
              Image.asset("assets/icons/logo3.png"),
              Image.asset("assets/icons/logo2.png"),
              Image.asset("assets/icons/logo3.png"),
              Image.asset("assets/icons/logo2.png"),
              Image.asset("assets/icons/logo3.png"),
            ],
          ),
        )
    );
  }

}