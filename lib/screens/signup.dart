import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/home.dart';

class Signup extends StatefulWidget {

  @override
  State<Signup> createState() => _SignUpState();
}

class _SignUpState extends State<Signup> {
  bool showpwd=true;
  bool showpwd1=true;
  var confirmpass;
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("SignUp")),
      body: Form(
          key: formkey,

          child: Column(
            children: [
              Image.asset("assets/icons/logo2.png",
                height: 100,
                width: 100,),


              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    validator: (email){
                      if(email!.isEmpty || !email.contains('@'))
                      {
                        return"Enter a valid email id" ;
                      }
                      else return null;
                    },

                    decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  )
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  obscureText: showpwd,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      hintText: "password",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(showpwd==true){
                            showpwd==false;
                          }
                          else{
                            showpwd==true;
                          }
                        });
                      }, icon: Icon(showpwd==true?Icons.visibility:Icons.visibility_off))
                  ),
                  validator: (password){
                    confirmpass=password;
                    if(password!.isEmpty || password.length<6)
                    {return"password should not be empty or length > 6";}

                    else return null;
                  },
                ),
              ),



              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    obscureText: showpwd1,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        hintText: "password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(showpwd1==true){
                              showpwd1==false;
                            }
                            else{
                              showpwd1==true;
                            }
                          });
                        }, icon: Icon(showpwd1==true?Icons.visibility:Icons.visibility_off))
                    ),
                    validator: (cpassword){
                      if(cpassword != confirmpass || cpassword!.isEmpty){
                        return"password mismatch/empty";
                      }
                      else return null;
                    },

                  )),


              ElevatedButton(onPressed: (){
                var isValid=formkey.currentState!.validate();
                if(isValid=true){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context)=>Home()));
                }
              }, child: Text("SignUp"))

            ],
          )),
    );

  }
}