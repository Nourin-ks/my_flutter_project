import 'package:flutter/material.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/firebase_functions.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/home_fb.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/register_fb.dart';

// void main(){
//   runApp(MaterialApp(home: Fire_Login(),));
// }

class Fire_Login extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Login Page"),),
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

            MaterialButton(
              onPressed: (){
                FirebaseFunctions().loginUser(emaill:email.text.trim(), pwd:pass.text.trim())
                    .then((response){
                      if(response == null){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fire_Home()));
                      }
                });
              },
              shape: StadiumBorder(),
              color: Colors.yellow,
            child: Text("Login Here"),),

            SizedBox(height: 15,),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey
              ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fire_Register()));
                },
                child: RichText(
                  text: TextSpan(
                      text: "Not a user??",
                      children: [
                        TextSpan(
                            text: "Register Here!!",
                            style: TextStyle(
                              color: Colors.black,
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
