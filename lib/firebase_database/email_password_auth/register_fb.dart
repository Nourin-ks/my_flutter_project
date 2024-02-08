import 'package:flutter/material.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/firebase_functions.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/login_fb.dart';

class Fire_Register extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Registration Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                  )
              ),
            ),
            ),

            Padding(padding: EdgeInsets.all(10),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    hintText: "Enter your Password",
                    border: OutlineInputBorder(
                    )
                ),
              ),),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                shape: StadiumBorder()
              ),
                onPressed: (){
                String emaill = email.text.trim();
                String password = pass.text.trim();

                FirebaseFunctions().registerUser(email:emaill, pwd:password)
                      .then((response){
                        if(response == null){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fire_Login()));
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response)));
                        }
                   });

                },
                child: Text("Register Here")),

            SizedBox(height: 15,),
            TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fire_Login()));
                },
                child: RichText(
                  text: TextSpan(
                      text: "Already registered??",
                      children: [
                        TextSpan(
                            text: "Login Here!!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15
                            )
                        )
                      ]
                  ),

                )
            )
          ],
        ),
      ),
    );
  }
}
