import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/home.dart';
import 'package:my_flutter_project/screens/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget{
  //for fetching values from textfield
  final uname_cntrl=TextEditingController();
  final pwd_cntrl=TextEditingController();

  String username="abc@gmail.com";
  String password="1234";



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("login")
      ),
      body: Column(
        children: [
          Image.asset("assets/icons/logo3.png",
            height: 100,
            width: 100,
          ),


          Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: uname_cntrl,
                decoration: InputDecoration(
                    hintText: "user name",
                    helperText: "username should be an email",
                    labelText: "username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
              )
          ),


          Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                  controller: pwd_cntrl,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: "password",
                      helperText: "password should be atleast 6 characters",
                      labelText: "password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  )
              )
          ),
          ElevatedButton(
              onPressed: (){
                if(uname_cntrl.text !="" && pwd_cntrl !=""){
                  if(uname_cntrl.text==username && pwd_cntrl.text==password){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context)=>Home()));
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                            "username/password incorrect")));
                  }
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                          "username and password should not be null")));
                }
              },

              child: Text("Login",style: GoogleFonts.pacifico(
                //Color: Colors.black,
                fontSize: 15,
              ))),

          TextButton(
              onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context)=>Signup()));
              },
              child: const Text("Not a user!!!Register here",


              ))
        ],
      ),
    );
  }
}