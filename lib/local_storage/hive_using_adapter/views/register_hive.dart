import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_project/local_storage/hive_using_adapter/model/users.dart';
import 'package:my_flutter_project/local_storage/hive_using_adapter/services/hiveDB.dart';
import 'package:my_flutter_project/local_storage/hive_using_adapter/views/login_hive.dart';
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
                    validateSignUp(context, reg_users);
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

  void validateSignUp(BuildContext context, List<Users> users) async{
    final email = email_controller.text;
    final pwd = pass_controller.text;
    final name = name_controller.text;
    bool userExist = false;
    final validateEmail = EmailValidator.validate(email);       //result will be bool, to chck if email have @ symbol, .com etc
    if(email != "" && pwd != "" && name != ""){                 // to chck if email and pss is empty
      if(validateEmail == true){                                // check if email format
        await Future.forEach(users, (singleUser) {              // to check each user in the hive
          if(singleUser.email == email){                       // to check if the entered email is in hive, if email is present in hive
            userExist = true;                                  // user already registered
          }else{
            userExist = false;                                 // user is not present
          }
        });
        if(userExist == true){
          Get.snackbar("Failed", "user Already exist!!!!!",
              colorText: Colors.white,
              backgroundColor: Colors.black);
        } else{
          if(pwd.length < 6){               // to validate password
            Get.snackbar("Error", "Password length should be > 6",
                colorText: Colors.white,
                backgroundColor: Colors.black);
          } else{
            final user = Users(email:email , password: pwd, name: name);
            await HiveDB.addUser(user);         // add user to hive
            Get.snackbar("Success", "user registration success",
                colorText: Colors.black,
                backgroundColor: Colors.green
            );
            Get.to(Hive_login());
          }
        }
      }else{
        Get.snackbar("Invalid Data", "Invalid email address",    // else of validate email
            colorText: Colors.white,
            backgroundColor: Colors.black);
      }
    }else{
      Get.snackbar("Empty Fields", "Fields must not be empty",   // else of empty field
          colorText: Colors.white,
          backgroundColor: Colors.black);
    }
  }
}