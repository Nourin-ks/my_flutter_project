import 'package:flutter/material.dart';

class Community_wtsapp extends StatelessWidget {
  List<Map<String, dynamic>> chatList = [
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'New community',
      'message': '',
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'Massive Salary Hike',
      'message': '',
    },
    {
      'dp': 'assets/icons/profilem2.png',
      'username': 'Announcements',
      'message': '~ Team Saurav_Pal:',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (context, index) => ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image:AssetImage(chatList[index]['dp']),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text(
              chatList[index]['username'],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chatList[index]['message'],
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )),
    );
  }
}