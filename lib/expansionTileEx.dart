import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ExpansionTileEx(),));
}

class ExpansionTileEx extends StatelessWidget {
var colors=["Colors.pink","Colors.red","Colors.black"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Tile"),
      ),
      body: ExpansionTile(title: Text("tile1"),
      subtitle: Text("colors"),
        children: List.generate(3, (index) => ListTile(
          leading: CircleAvatar(
           // backgroundColor: colors[index],
          ),
        )),
      ),
    );
  }
}
