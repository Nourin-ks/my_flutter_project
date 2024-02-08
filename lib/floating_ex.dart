import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: FloatEx(),));
}

class FloatEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FloatingactionButton,\nAlertDialog & SnackBar,"),),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          child: Icon(
            Icons.add,
            color: Colors.black,),
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text("alert dialog"),
                  content: Text("alert"),
                  actions: [
                    IconButton(
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Colors.green,
                                  content: Text("successfully added")));
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.add)),

                    IconButton(onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              backgroundColor: Colors.green,
                              content: Text("successfully deleted")));
                      Navigator.pop(context);

                    }, icon: Icon(Icons.minimize))
              ],
              backgroundColor: Colors.pink[100],
        ));
          }),
    );
  }
}
