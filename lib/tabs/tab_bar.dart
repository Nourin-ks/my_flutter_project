import 'package:flutter/material.dart';
import 'package:my_flutter_project/gridview/gv2_maxcrossaxis.dart';
import 'package:my_flutter_project/listview/lv2_listgenerate.dart';

void main(){
  runApp(MaterialApp(home: TabbarEx(),));
}

class TabbarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(appBar: AppBar(title: Text("WhatsApp"),
        bottom: TabBar(tabs: [
          Tab(child: Icon(Icons.group)),
          Tab(child: Text("Chat")),
          Tab(child: Text("Updates")),
          Tab(child: Text("Call")),
        ]),
        ),
        body: TabBarView(children: [
          Text("hii"),
          Listview2(),
          Icon(Icons.favorite),
          GridView2()
        ]),
        ));
  }
}
