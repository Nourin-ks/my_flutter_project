import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Shared_Registrtn(),));
}

class Shared_Registrtn extends StatelessWidget {
  const Shared_Registrtn({super.key});

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();
    final uname = TextEditingController();
    final pwd = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(title: Text("Registration"),backgroundColor: Colors.redAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Registration page", 
              style: TextStyle(fontSize: 20),),
            
            Padding(
                padding: EdgeInsets.all(10),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "name"
              ),
            ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "username"
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: pwd,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password"
                ),
              ),
            ),
            
            ElevatedButton(
                onPressed: () => storedata(),
                child: Text("REGISTER HERE"))
            
          ],
        ),
      ),
      
    );
  }

  storedata() {}
}
