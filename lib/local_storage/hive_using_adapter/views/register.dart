import 'package:flutter/material.dart';
import 'package:my_flutter_project/local_storage/hive_using_adapter/services/hiveDB.dart';
import 'package:my_flutter_project/local_storage/hive_using_adapter/views/login.dart';
import 'package:my_flutter_project/login_nd_signup/registration_new.dart';


class Hive_register extends StatefulWidget {
  @override
  State<Hive_register> createState() => _Hive_registerState();
}

class _Hive_registerState extends State<Hive_register> {
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: name_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "name"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: email_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Email"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: pass_controller,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Password"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () async{
                    //fetch all registered users from db
                    final reg_users = await HiveDB.getallusers();
                  },
                  child: const Text(
                    "REGISTER",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}