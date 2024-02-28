import 'package:flutter/material.dart';

class Status_wtsapp extends StatelessWidget {
  List<Map<String, dynamic>> chatList = [
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Aleena',
      'lastchat': '11:00 PM',
    },
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Amy',
      'lastchat': '10:43 PM',
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'Akhil',
      'lastchat': '08:30 PM',
    },
    {
      'dp': 'assets/icons/profilem2.png',
      'username': 'Thomas',
      'lastchat': 'Yesterday',
    },
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Athullya',
      'lastchat': 'Yesterday',
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'Nihal',
      'lastchat': 'Yesterday',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Status", style: TextStyle(color: Colors.white, fontSize: 17),),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white,),
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Status privacy", style: TextStyle(color: Colors.white),)),
              ];
            },
            color: Colors.black87,),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (context, index) => ListTile(
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(chatList[index]['dp']),
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
              chatList[index]['lastchat'],
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}