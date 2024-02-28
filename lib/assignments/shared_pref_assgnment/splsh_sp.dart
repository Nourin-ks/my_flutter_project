import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_project/assignments/shared_pref_assgnment/welcome_sp.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash_SP(),
  ));
}
class Splash_SP extends StatefulWidget {
  const Splash_SP({super.key});

  @override
  State<Splash_SP> createState() => _Splash_SharedPRefState();
}

class _Splash_SharedPRefState extends State<Splash_SP> {
  @override

  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Welcome_SP()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030718),
      body: Center(
        child: Image.asset("assets/images/yoga.jpeg",
          width: 160,
          height: 160,),
      ),
    );
  }
}
