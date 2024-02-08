import 'package:flutter/material.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/firebase_functions.dart';
import 'package:my_flutter_project/firebase_database/email_password_auth/login_fb.dart';

class Fire_Home extends StatelessWidget {
  const Fire_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              FirebaseFunctions().logoutUser().then((value) => 
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Fire_Login())));
            },
            child: Text("LogOut")),
      ),
    );
  }
}
