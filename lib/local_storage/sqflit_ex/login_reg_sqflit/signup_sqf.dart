import 'package:flutter/material.dart';
import 'package:my_flutter_project/local_storage/sqflit_ex/login_reg_sqflit/login_sqf.dart';

void main(){
  runApp(MaterialApp(home: Login_sqf(),));
}

class Signup_sqf extends StatelessWidget {
  const Signup_sqf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/punch3.jpg"), fit: BoxFit.cover),
          ),
        ),
      ),
      );

  }
}
