import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Sall(),
  ));
}

class Sall extends StatelessWidget {
  var icons = [
    Icons.home,
    Icons.water,
    Icons.credit_card,
    Icons.wifi,
    Icons.cast_for_education,
    Icons.sports,
    Icons.health_and_safety,
    Icons.phone,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          ListTile(
            leading: Image.asset(
              "assets/icons/apple.png",
              color: Colors.grey.shade600,
            ),
            title: Text(
              "Hi Annn",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "April 5",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Please add your First Bill ",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 13, 38, 82),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              onPressed: () {
                // Navigator.push(
                // context, MaterialPageRoute(builder: (context) => Bottom()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "+ Add bill",
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text("Categories",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 2),
                  itemBuilder: (BuildContext context, int index) {
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors
                            .primaries[Random().nextInt(Colors.primaries.length)],
                      ),
                      child: Center(
                        child: Icon(icons[index]),
                      ),
                    );
                  })),
        ]));
  }
}