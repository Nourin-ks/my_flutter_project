import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StackEx2(),));
}

class StackEx2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Stack"),),
    body: Center(
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/logo.jpg"),
                    )),
          ),

          Positioned(top: 40,
              left: 20,
              child: Text(
                "Name",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.italic),
              )),


          Positioned(top: 70,
              left: 20,
              child: Text(
                "Designation",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),


          Positioned(bottom: 40,
              right: 70,
              child: Wrap(
                children: [
                  Icon(Icons.phone,color: Colors.white,),
                  Text(
                  "Phno",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),
                ),]
              )),


          Positioned(bottom: 10,
              right: 70,
              child: Wrap(
                  children: [
                    Icon(Icons.email,color: Colors.white,),
                    Text(
                      "email",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),]
              )),

        ],
      ),
    ),
    );
  }
}
