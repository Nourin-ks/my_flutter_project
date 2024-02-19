import 'package:flutter/material.dart';
import 'package:my_flutter_project/local_storage/sqflit_ex/login_reg_sqflit/home.dart';

import 'admin_sqf.dart';
import 'db_logndreg.dart';
import 'adminchck.dart';


class Login_sqf extends StatelessWidget {
  final cemail = TextEditingController();
  final cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void loginuser(String email, String pass) async {
      var data = await SQL_function.checkuserregister(email, pass);
      if (data.isNotEmpty) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Adminhome()));
      }

    }

    void adminlogin(String email, String pass) async {
      if (email == 'admin@gmail.com' && pass == '123456') {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Admindash()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('admin not exist')));
      }
    }

    void handleLogin() {
      if (cemail.text == 'admin@gmail.com' && cpassword.text == '123456') {
        adminlogin(cemail.text, cpassword.text);
      } else {
        loginuser(cemail.text, cpassword.text);
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
                      color: Colors.white),
                ),

                SizedBox(
                  height: 50,
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
                              height: 30,
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
                                    width: 60,
                                  ),
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextField(
                              controller: cemail,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: ' Email'),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              controller: cpassword,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: ' Password'),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              width: 350,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(40)),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black),
                                  onPressed: () {
                                    handleLogin();
                                    cemail.clear();
                                    cpassword.clear();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home_sqf()));
                                  },
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )),
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
