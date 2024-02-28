import 'package:flutter/material.dart';

class Chat_wtsapp extends StatelessWidget {
  List<Map<String, dynamic>> chatList = [
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Salbana',
      'message': 'Hiiii',
      'lastchat': '9:15 AM',
    },
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Sherfina',
      'message': 'Ok',
      'lastchat': '9:00 AM',
    },
    {
      'dp': 'assets/icons/profilem2.png',
      'username': 'Sanu',
      'message': 'How are u?? ',
      'lastchat': '08:30 AM',
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'Jack',
      'message': 'Okay',
      'lastchat': '8:00 AM',
    },
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'athullya',
      'message': 'Ok fine',
      'lastchat': '6:30 AM',
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'Adnan',
      'message': 'Thanks for letting me know',
      'lastchat': '6:00 AM',
    },
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Shebi',
      'message': 'Ok ',
      'lastchat': '8:00 AM',
    },
    {
      'dp': 'assets/icons/profilem2.png',
      'username': 'Alex',
      'message': 'How\'s your trip so far?',
      'lastchat': 'Yesterday',
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'Rizwan',
      'message': 'Will let you know',
      'lastchat': 'Yesterday',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(chatList[index]['dp']),
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
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chatList[index]['lastchat'],
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}