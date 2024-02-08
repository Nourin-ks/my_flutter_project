import 'package:flutter/material.dart';
import 'package:my_flutter_project/local_storage/shared_pref/shred_pref_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_Home extends StatefulWidget {
  const Shared_Home({super.key});

  @override
  State<Shared_Home> createState() => _Shred_HomeState();
}

class _Shred_HomeState extends State<Shared_Home> {
  late SharedPreferences preferences;
  late String username;

  @override
  void initState(){
    fetchData();
    super.initState();
  }

  void fetchData() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("Email")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          "Welcome $username",
        style: TextStyle(fontSize: 25, color: Colors.white),),
        backgroundColor: Colors.pinkAccent,),

      body: Center(
        child: ElevatedButton(
            onPressed: ()async{
              preferences = await SharedPreferences.getInstance();
              preferences.setBool("newuser", true);  /// user logged out
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Shared_Login()));
            },
            child: Text("LOGOUT")),
      ),
    );
  }


}
