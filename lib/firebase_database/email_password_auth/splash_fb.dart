import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/home_fb.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/login_fb.dart';

void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDhTiiH1N2n5Ds-I0a3vkFdvJeftLS8qJU",
        appId: "1:60364394705:android:c12e12423f1813faabf5f0",
        messagingSenderId: "",
        projectId: "mygsignin-348e1"
    )
  );
  User? user = FirebaseAuth.instance.currentUser; ///to fetch the user who logged in
  runApp(MaterialApp(
    home: user == null? Fire_Splash(): Fire_Home(),
  ));
}

class Fire_Splash extends StatefulWidget {
  const Fire_Splash({super.key});

  @override
  State<Fire_Splash> createState() => _Fire_SplashState();
}

class _Fire_SplashState extends State<Fire_Splash> {
  @override
  void initState(){
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fire_Login()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/duck_gif.gif"))
        ),
      ),
    );
  }
}
