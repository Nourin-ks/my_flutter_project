import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_flutter_project/assignments/shared_pref_assgnment/userhome_sp.dart';

import 'login_sp.dart';



class Signup_SP extends StatelessWidget {
  Signup_SP({super.key});

  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030718),
      body: Center(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16,),
                Image.asset("assets/images/yoga.jpeg",
                  width: 150,
                  height: 140,),
                SizedBox(height: 12,),
                Text("WELCOME BUDDY !!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                SizedBox(height: 5,),
                Text("Please fill out details", style: TextStyle(color: Colors.white,  fontSize: 10),),
                SizedBox(height: 24,),
                ///Username
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    validator: (email) {
                      if (email!.isEmpty || !email.contains('@')) {
                        return "Enter a valid email ID";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Your username',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: Icon(Icons.person, color: Colors.white,),
                        // labelText: 'Your username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ///mobile
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: TextFormField(
                    validator: (mobile) {
                      if (mobile!.isEmpty || mobile.length < 10) {
                        return "Mobile should not be empty, enter valid mobile no.";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10,),
                ///password
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "Password should not be empty, length > 6 characters";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 30,),
                MaterialButton(
                    height: 40,
                    minWidth: 200,
                    color: Colors.blue,
                    onPressed: (){
                      var isValid = formkey.currentState!.validate();
                      if (isValid == true)  {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Home_SP()));
                      }
                    }, child: Text("SIGN IN", style: TextStyle(color: Colors.white),)),
                SizedBox(height: 16,),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Login_SP()));
                    },
                    child: RichText(
                      text: TextSpan(text: 'Already a user?', style: TextStyle(color: Colors.white), children: [
                        TextSpan(
                            text: "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ))
                      ]),
                    )),
                SizedBox(height: 10,),
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
        ),
      ),

    );
  }
}
