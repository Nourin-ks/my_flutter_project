import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_flutter_project/assignments/shared_pref_assgnment/signup_sp.dart';

import 'login_sp.dart';



class Welcome_SP extends StatelessWidget {
  const Welcome_SP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030718),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image.asset("assets/images/yoga.jpeg",
              width: 160,
              height: 160,),
            SizedBox(height: 12,),
            Text("Hi There !!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 8,),
            Text("To keep connected with us Please select your option", style: TextStyle(color: Colors.white,  fontSize: 10),),
            SizedBox(height: 100,),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.blue,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_SP()));
                }, child: Text("LOG IN", style: TextStyle(color: Colors.white),)),
            SizedBox(height: 12,),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.blue,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup_SP()));
                }, child: Text("SIGN IN", style: TextStyle(color: Colors.white),)),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(left: 150, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(FontAwesomeIcons.facebook, color: Colors.white,size: 18,),
                  FaIcon(FontAwesomeIcons.instagram, color: Colors.white,size: 18,),
                  FaIcon(FontAwesomeIcons.youtube, color: Colors.white,size: 18,),
                  FaIcon(FontAwesomeIcons.twitter, color: Colors.white,size: 18,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
