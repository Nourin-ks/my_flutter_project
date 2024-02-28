import 'package:flutter/material.dart';

class Home_SP extends StatelessWidget {
  const Home_SP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030718),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 36,),
            Image.asset("assets/images/yoga.jpeg",
              width: 170,
              height: 170,),
            SizedBox(height: 12,),
            Text("WELCOME BUDDY", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
