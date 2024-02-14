import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_flutter_project/local_storage/hive_using_adapter/views/register.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('userdata');
  runApp(GetMaterialApp(home: Hive_login(),));
}
class Hive_login extends StatefulWidget {
  @override
  State<Hive_login> createState() => _Hive_registerState();
}

class _Hive_registerState extends State<Hive_login> {
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
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
                    hintText: "username"),
              ),
              const SizedBox(
                height: 10,
              ),
              // TextField(
              //   controller: email_controller,
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(30)),
              //       hintText: "Email"),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
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
                  ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text(
                    "Login Here",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    Get.to(Hive_register());
                  },
                  child: const Text("Not a User?? Register Here.."))
            ],
          ),
        ),
      ),
    );
  }
}