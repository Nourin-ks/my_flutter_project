import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_project/local_storage/sqflit_ex/login_reg_sqflit/login_sqf.dart';
import 'package:my_flutter_project/local_storage/sqflit_ex/login_reg_sqflit/signup_sqf.dart';


void main(){
  runApp(MaterialApp(home: Home_dup(),));
}
class Home_dup extends StatelessWidget {
  const Home_dup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/punch3.jpg"),
                  fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(height: 45,),
              Text("PUNCH",
                  style: TextStyle(
                      fontSize: 65,
                      fontWeight: FontWeight.w800,
                      color: Colors.white)),

              Text(" Punch . Earn . Repeat",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),

              SizedBox(height: 100,),

              Container(
                height: 515,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
                    color: Colors.white
                ),

                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Icon(Icons.credit_card, size: 66,),
                    SizedBox(height: 20,),
                    Text("  organise, find and enjoy your\nloyality cards in a more modern\n          and dynamic way",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),

                    SizedBox(height: 70,),

                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black
                      ),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup_sqf()));
                          },
                          child: Text("SIGN UP",
                            style: TextStyle(fontSize: 20, color: Colors.white),),),
                    ),

                    SizedBox(height: 40,),
                    Container( height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black
                        ),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_sqf()));
                          },
                          child: Text("LOGIN",
                            style: TextStyle(fontSize: 20, color: Colors.black),),)
                    )

                    

                  ],
                ),
              ),  
              
            ],
          ),
          ),


        ),

    );
  }
}



