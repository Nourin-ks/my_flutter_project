import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: DrawersEx(),));
}
class DrawersEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pic5.jpg"),
                      fit: BoxFit.fill)
              ),

                accountName: Text("Luminar"),
                accountEmail: Text("Luminar@gmail.com"),

            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/pic8.jpg"),),

            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("assets/images/pic7.jpg"),),
              CircleAvatar(backgroundImage: AssetImage("assets/images/pic6.jpg"),)
              //Image.asset("assets/images/pic7.jpg"),
              //Image.asset("assets/images/pic6.jpg"),
            ],
            arrowColor: Colors.black,),
            ListTile(
              leading: Icon(Icons.person),
            title: Text("name"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
          ],
        ),
      ),
    );
  }
}
