import 'package:flutter/material.dart';
import 'package:my_flutter_project/assignments/whatsapp/callscrn_wtsapp.dart';
import 'package:my_flutter_project/assignments/whatsapp/chat.dart';
import 'package:my_flutter_project/assignments/whatsapp/community.dart';
import 'package:my_flutter_project/assignments/whatsapp/status.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tabbar_wtsapp(),
  ));
}

class Tabbar_wtsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.green,
          actions: [
            Icon(Icons.camera_alt_outlined, color: Colors.black,),
            SizedBox(width: 16),
            Icon(Icons.search,color: Colors.black,),
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.black,),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("New group",style: TextStyle(color: Colors.white))),
                  PopupMenuItem(child: Text("New community",style: TextStyle(color: Colors.white))),
                  PopupMenuItem(child: Text("Archived",style: TextStyle(color: Colors.white))),
                  PopupMenuItem(child: Text("Starred messages",style: TextStyle(color: Colors.white))),
                  PopupMenuItem(child: Text("Settings",style: TextStyle(color: Colors.white))),
                  PopupMenuItem(child: Text("Logout",style: TextStyle(color: Colors.white))),
                ];
              },
              color: Colors.black87,),
          ],
          title: Text("WhatsApp", style: TextStyle(color: Colors.black),),
          bottom: TabBar(
              indicatorColor: Colors.green,
              labelColor: Colors.green,
              tabs: [
                Tab(
                  child: Icon(Icons.group, color: Colors.black,),
                ),
                Tab(
                  child: Text("Chats", style: TextStyle(color: Colors.black, fontSize: 17),),
                ),
                Tab(
                  child: Text("Updates", style: TextStyle(color: Colors.black, fontSize: 17),),
                ),
                Tab(
                  child: Text("Calls", style: TextStyle(color: Colors.black, fontSize: 17),),
                )]),
        ),
        body: TabBarView(children: [
          Community_wtsapp(),
          Chat_wtsapp(),
          Status_wtsapp(),
          CallScreen_wtsapp(),
        ]),
      ),
    );
  }
}

