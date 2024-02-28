import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_flutter_project/assignments/whatsapp/tabbar.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash_wtsapp(),
  ));
}
class Splash_wtsapp extends StatefulWidget {
  const Splash_wtsapp({super.key});

  @override
  State<Splash_wtsapp> createState() => _WhatsApp_SplashState();
}

class _WhatsApp_SplashState extends State<Splash_wtsapp> {

  @override
  void initState() {
    Timer(Duration(seconds: 8), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Tabbar_wtsapp()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white,size: 100,),
            SizedBox(height: 250,),
            Text("from", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.infinity, color: Colors.white,),
                SizedBox(width: 8,),
                Text("Meta", style: TextStyle(color: Colors.white, fontSize: 18),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


