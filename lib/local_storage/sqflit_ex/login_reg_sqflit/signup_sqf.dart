import 'package:flutter/material.dart';
import 'package:my_flutter_project/local_storage/sqflit_ex/login_reg_sqflit/login_sqf.dart';

import 'db_logndreg.dart';


class Signup_sqf extends StatefulWidget {
  @override
  State<Signup_sqf> createState() => _SignupState();
}

class _SignupState extends State<Signup_sqf> {
  final name = TextEditingController();

  final password = TextEditingController();

  final email = TextEditingController();

  final phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    registeruser(
        String name, String password, String email, String phonenumber) async {
      var id = await SQL_function.adduser(name, password, email, phonenumber);
      print(id);
      if (id != null) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Login_sqf()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('registration failed')));
      }

    }
    void isuserregister(String email) async{
      var result=await SQL_function.checkuseralreadyregister(email);
      if(result.isNotEmpty){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('user already registered')));
      }else{
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>Login_sqf()));
      }
    }

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/punch4.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Center(
                    child: Text(
                      'PUNCH',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.w900),
                    )),
                Text(
                  'Punch.Earn.Repeat',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white, ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).viewInsets.bottom,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(
                                        Icons.chevron_left,
                                        color: Colors.black,
                                        size: 45,
                                      )),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextField(
                              controller: name,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: ' Full Name'),
                            ),

                            SizedBox(height: 25,),

                            TextField(
                              controller: password,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: ' Phone Number'),
                            ),

                            SizedBox(height: 25,),

                            TextField(
                              controller: email,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: ' Email id'),
                            ),

                            SizedBox(height: 25,),

                            TextField(
                              controller: phonenumber,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: ' Password'),
                            ),

                            SizedBox(height: 23,),

                            Container(
                              width: 340,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),

                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black),
                                  onPressed: (){
                                    registeruser(name.text, password.text, email.text, phonenumber.text);
                                    isuserregister(email.text);

                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_sq()));
                                  }, child: Text('CREATE ACCOUNT',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white),)),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
