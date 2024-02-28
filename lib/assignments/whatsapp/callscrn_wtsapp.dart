import 'package:flutter/material.dart';

class CallScreen_wtsapp extends StatelessWidget {
  CallScreen_wtsapp({super.key});

  List<Map<String, dynamic>> callList = [
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'nourin',
      'callTime': 'Yesterday, 9:35 PM',
      'videocall': true,
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'Amy',
      'callTime': 'February 04, 1:39 PM',
      'videocall': true,
    },
    {
      'dp': 'assets/icons/profilem2.png',
      'username': 'sanu',
      'callTime': 'January 23, 9:35 PM',
      'videocall': false,
    },
    {
      'dp': 'assets/icons/profile.png',
      'username': 'John',
      'callTime': 'january 20, 5:02 PM',
      'videocall': true,
    },
    {
      'dp': 'assets/icons/profilem2.png',
      'username': 'Subair',
      'callTime': 'January 12, 12:35 PM',
      'videocall': false,
    },
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Louis',
      'callTime': 'January 9, 1:31 PM',
      'videocall': true,
    },
    {
      'dp': 'assets/icons/profilew1.png',
      'username': 'Salbana',
      'callTime': 'February 10, 9:40 PM',
      'videocall': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: callList.length,
          itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(callList[index]['dp']),
              ),
              title: Text(
                callList[index]['username'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                callList[index]['callTime'],
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              trailing: Icon(callList[index]['videocall']
                  ? Icons.videocam
                  : Icons.call,
                color: Colors.green,))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add_ic_call_rounded),
      ),
    );
  }
}