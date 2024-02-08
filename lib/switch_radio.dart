import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Switch_RadioEx(),));
}
class Switch_RadioEx extends StatefulWidget {
  

  @override
  State<Switch_RadioEx> createState() => _Switch_RadioExState();
}

class _Switch_RadioExState extends State<Switch_RadioEx> {
  bool result=true;
  int selectedoption=1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Switch & Radio"),),
      body: Column(
        children:[
          Switch(
            //activeTrackColor: Colors.black,
            inactiveThumbColor: Colors.black,
            activeColor: Colors.pinkAccent,
            value: result,
            onChanged: (bool value1){
              setState(() {
                result=value1;
          });
        }),

          ListTile(
            title: Text("java"),
            leading: Radio(value: 1, groupValue: selectedoption, onChanged: (value){
              setState(() {
                selectedoption=value!;
              });
            }),
          ),

          ListTile(
            title: Text("Flutter"),
            leading: Radio(value: 2, groupValue: selectedoption, onChanged: (value){
              setState(() {
                selectedoption=value!;
              });
            }),
          ),

          ListTile(
            title: Text("Python"),
            leading: Radio(value: 3, groupValue: selectedoption, onChanged: (value){
              setState(() {
                selectedoption=value!;
              });
            }),
          )

      ] //children
      ),
    );
  }
}
