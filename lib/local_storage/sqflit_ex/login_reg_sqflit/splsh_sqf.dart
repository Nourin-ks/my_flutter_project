import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_project/local_storage/sqflit_ex/login_reg_sqflit/home_sqf.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main(){
  runApp(MaterialApp(home: Splash_sqf(),));
}

class Splash_sqf extends StatefulWidget {
  const Splash_sqf({super.key});

  @override
  State<Splash_sqf> createState() => _Splash_sqfState();
}

class _Splash_sqfState extends State<Splash_sqf> {

  void initState(){
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home_sqf()));

    });
    //super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/punch.jpg"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 330,
                left: 100,
                child: SizedBox(
                  height: 150,
                  width: 300,
                  child: GradientText("PUNCH",
                    style: GoogleFonts.anton(
                        fontSize: 75,


                        //color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                    ),
                    colors: [
                      Colors.black,
                      Colors.purple,
                      Colors.redAccent,
                      Colors.black,
                      Colors.purple,
                      Colors.red,
                          ],
                  ),
                  
           )),
            
            Positioned(
              top: 430,
                left: 100,
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Text("punch",
                    style: TextStyle(fontSize: 20, color: Colors.pink[200]),),
                )),

            Positioned(
                top: 395,
                left: 131,
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Text("  .  ",
                    style: TextStyle(fontSize: 50, color: Colors.black),),
                )),

            Positioned(
                top: 430,
                left: 173,
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Text("Earn",
                    style: TextStyle(fontSize: 20, color: Colors.purple),),
                )),

            Positioned(
                top: 395,
                left: 190,
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Text("  .  ",
                    style: TextStyle(fontSize: 50, color: Colors.black),),
                )),

            Positioned(
                top: 430,
                left: 228,
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Text("Repeat",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),),
                )),

          ],

        ),
      ),





      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //    //Image(image: AssetImage("assets/images/punch.jpg",),fit: BoxFit.contain,)
      //     Container(
      //       height: 770,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(image: AssetImage("assets/images/punch.jpg"), fit: BoxFit.cover)
      //       ),
      //     ),
      //     SizedBox(height: 10,),
      //
      //
      //   ],
      // ),
    );
  }
}
