import 'dart:math';

import 'package:flutter/material.dart';

import '../gridview/gv2_maxcrossaxis.dart';
import '../listview/lv2_listgenerate.dart';

void main(){
  runApp(MaterialApp(home: BottomNav()));
}
class BottomNav extends StatefulWidget {


  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var index=0;
  var screens=[
    GridView2(),
    Listview2(),
    GridView2(),
    Listview2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex){
          setState(() {
            index=tapIndex;
          });
        },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.red,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.search,//color: Colors.black,
                ),
                label: "Search"),

          BottomNavigationBarItem(
              backgroundColor: Colors.yellow,
              icon: Icon(Icons.home,//color: Colors.black
              ),
              label: "Home"),

          BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.person,//color: Colors.black
              ),
              label: "Profile"),

          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.settings,//color: Colors.black
                   ),
              label: "Settings")
          ]),
      body: screens[index],
    );
  }
}
