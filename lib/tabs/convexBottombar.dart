import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../gridview/gv2_maxcrossaxis.dart';
import '../listview/lv2_listgenerate.dart';

void main(){
  runApp(MaterialApp(home: ConvexEx(),));
}
class ConvexEx extends StatefulWidget {


  @override
  State<ConvexEx> createState() => _ConvexExState();
}

class _ConvexExState extends State<ConvexEx> {
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
      bottomNavigationBar: ConvexAppBar(
        activeColor: Colors.white,
        shadowColor: Colors.pink,
        items: [
        TabItem(icon: Icon(Icons.home)),
      TabItem(icon: Icon(Icons.settings)),
      TabItem(icon: Icon(Icons.person)),
      TabItem(icon: Icon(Icons.search))
      ],
      onTap: (tapIndex){
        setState(() {
          index=tapIndex;
        });
    },
      ),
      body: screens[index],
    );
  }
}
