import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Username_Password(),));
}

class Username_Password extends StatelessWidget {
  const Username_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){},
                child: Text("Login"))

          ],
        ),
      ),
    );
  }
}
