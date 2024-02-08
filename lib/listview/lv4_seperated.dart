import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Listview4(),));
}

class Listview4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview seperated"),),
      body: ListView.separated(itemBuilder: (context,index)=> Card(color: Colors.amber,
        //child: Image.asset("assets/icons/logo3.png"),
        child: Text("januvary"),

      ),
          separatorBuilder: (context,index){
            if(index%4==0){
              return Card(color: Colors.red,
                child: Text("advertisement"),);}
            return SizedBox(height: 8,);},
          itemCount: 8),
    );
  }
}