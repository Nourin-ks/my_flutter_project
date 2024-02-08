import 'package:flutter/material.dart';
import 'package:my_flutter_project/local_storage/shared_pref/shared_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// LOGIN PAGE
void main(){
  runApp(MaterialApp(home: Shared_Login(),));
}

class Shared_Login extends StatefulWidget {
  @override
  State<Shared_Login> createState() => _Shared_Pref_exState();
}

class _Shared_Pref_exState extends State<Shared_Login> {
  final uname_controller = TextEditingController();
  final pw_controller = TextEditingController();
  late SharedPreferences preferences;
  late bool isANewUser;

  @override
  void initState(){
    checkTheUserIsAlreadyLoggedIn();
    super.initState();
  }

  void checkTheUserIsAlreadyLoggedIn() async{
    preferences = await SharedPreferences.getInstance();
    isANewUser = preferences.getBool('newuser') ?? true;
    /// ?? --> is first stmnt is null 2nd stmnt will execute
    if(isANewUser == false) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Shared_Home()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login using shared",),backgroundColor: Colors.redAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login page",
              style: TextStyle(
                  fontSize: 20),),
            Padding(
                padding: EdgeInsets.all(10),
            child: TextField(
              controller: uname_controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                  hintText: "Email",
              ),
            ),
            ),

            Padding(
                padding: EdgeInsets.all(10),
            child: TextField(
              controller: pw_controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
          ),
        ),),

           OutlinedButton(
               style: OutlinedButton.styleFrom(
                 backgroundColor: Colors.redAccent
               ),
               onPressed: () async{
                 preferences = await SharedPreferences.getInstance();

                 String email = uname_controller.text;
                 String pwd = pw_controller.text;

                 if(email != "" && pwd != ""){
                   preferences.setString("Email", email);
                   preferences.setString("pass", pwd);
                   preferences.setBool("newuser", false);

                   Navigator.of(context).push(
                       MaterialPageRoute(builder: (context)=> Shared_Home()));
                   uname_controller.text = "";
                   pw_controller.text = "";
                 } else{
                   ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("please fill all the fields")));
                 }

           },
               child: const Text("LOGIN HERE"))
          ],

        ),
      ),
    );
  }


}
