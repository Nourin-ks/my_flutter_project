import 'package:flutter/material.dart';

import 'package:my_flutter_project/login_nd_signup/login_new.dart';

class registration extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  String? pass; ///to collect value from pwd field
  var pwdcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration  page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "email"),
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return "invalid email/or empty field";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  validator: (pwd) {
                    if (pwd!.isEmpty || pwd.length < 6) {
                      return "length should be >6 /field must not be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "password"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: " confirm password"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {
                      var valid = formkey.currentState?.validate();
                      if (valid == true) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login_new()));
                      } else {
                        SnackBar(
                          content: Text("please check the fields"),
                        );
                      }
                    },
                    child: const Text(
                      "submit ",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}