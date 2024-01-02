import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 30), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/vgtbls.jpg"), fit: BoxFit.fill)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/logo1.png',
                  height: 150,
                  width: 100,
                ),
                Text(
                  "Fresh  Foods",
                  style: GoogleFonts.pacifico(
                      color: Colors.black,
                      fontSize: 50,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  "Tasty & Healthy",
                  style: GoogleFonts.oswald(
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.normal
                  ),
                )
              ],
            ),
          ),
        ));
  }
}