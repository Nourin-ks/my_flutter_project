import 'package:flutter/material.dart';

class Home_new extends StatelessWidget {
  const Home_new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Text("Welcome user",
         style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 20,
             color: Colors.brown),),
     ),
    );
  }
}
