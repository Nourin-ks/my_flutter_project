import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listview3(),));
}
class Listview3 extends StatelessWidget {
  var name=["anu",
    "ann",
    "Rinu",
    "sanu",
    "saan",
    "sher",
    "cheppz",
    "nourin",
    "salbana",
    "athullya",
    "adila",
    "gopi",
    "aysh",
    "anju"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Listview Builder"),),
        body: ListView.builder(
          //itemCount: 20,
            itemCount: name.length,
            itemBuilder: (context, index)=> Card(
              child: Text(name[index]),
            )


        ));
  }
}