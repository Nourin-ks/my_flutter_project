import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_flutter_project/assignments/ecommerce/views/profile.dart';
import 'package:my_flutter_project/assignments/ecommerce/views/shoppingcart.dart';

import 'echome.dart';
import 'favorites.dart';
void main(){
  runApp(MaterialApp(home: Bhome(),));
}

class Bhome extends StatefulWidget {
  @override
  State<Bhome> createState() => _EhomeState();
}

class _EhomeState extends State<Bhome> with TickerProviderStateMixin{
  int currentindex=0;
  TabController?tabcontroller;
  @override
  void initState() {
    tabcontroller=TabController(length: 5, vsync: this,initialIndex: 0);
    super.initState();
  }
  @override
  void dispose() {
    tabcontroller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:TabBarView(
          controller: tabcontroller,
          children: [
            Echome(),
            Center(child: Text('hi'),),
            Favoritepage(),
            Shoppingbag(),
            Profile(),
          ]),
      bottomNavigationBar: BottomNavigationBar(

          currentIndex: currentindex,
          onTap: (value){
            setState(() {
              tabcontroller!.index=value;
            });

          },
          // showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.house,
                  color: Colors.black,
                  size: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.search,size: 20,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.black,
                  size: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.bagShopping,
                  color: Colors.black,
                ),
                label: ''),

            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.person,
                  color: Colors.black,
                ),
                label: ''),
          ]),


    );
  }

}