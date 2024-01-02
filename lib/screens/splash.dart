import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_flutter_project/screens/login.dart';


void main(){
  runApp(MaterialApp(home: Splash(),));
}
class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash>{
  @override
  void initState(){
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login()));

    });
    //super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          //width: double.infinity,
          // width: 600,
          // height: 600,
          // decoration: BoxDecoration
          // (image: DecorationImage
          // (image: AssetImage("assets/images/logo.jpg"),
          // fit: BoxFit.fill
          // )),
          // color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image.asset("assets/images/frts.jpg",
                  height: 700,
                  width: 600,
                ),
                Text("Eat healthy, Stay healthy ",
                  style: GoogleFonts.whisper(
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),),



              ],
            ),
          ),


        ));

  }

}